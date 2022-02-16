// <editor-fold defaultstate="collapsed" desc="pre-amble">
/* 
 * File:   BME280.h
 * Originally written by Jason McGuire (j.mcguire.2015@ieee.org)
 * Heavily modified for PIC24 and enhanced by Tom Croft
 * Description: A library for a BME280 Weather Sensor for PIC24F using SPI
 * See example.c for implementation of the library
 * Sample Product: http://www.adafruit.com/products/2652
 * and https://www.mikroe.com/weather-click
 * Created on October 13, 2015, 9:08 AM
 * modified October 20, 2019
 
License Information:  As unchanged by Tom from original by Jason

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
 */
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Defines">
#define CPU_CLOCK (16000000ul)
#define FCY     (CPU_CLOCK/2)	
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Includes">
//#include <libpic30.h>       // for __delay_ms()   NOTE: you have to define FCY for this to work. 
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include "xc.h"
#include "BME280.h"

// </editor-fold>

BME280_S32_t t_fine; // global variable  // ERROR was - Take this out of the .h file and put it in the .c file

// <editor-fold defaultstate="collapsed" desc="Device NULL pointer check">
BME280_S8_t null_ptr_check(BME280_DEVICE *dev)
{
    BME280_S8_t rslt;

    if ((dev == NULL) || (dev->csb_High== NULL) || (dev->csb_Low == NULL) || (dev->write_8bit == NULL)  || (dev->read_8bit == NULL))
    {
        /* Device structure pointer is not valid */
        rslt = BME280_E_NULL_PTR;
    }
    else
    {
        /* Device structure is fine */
        rslt = BME280_OK;
    }

    return rslt;
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Retrive all the calibration values out of device">
BME280_S8_t retrieve_all_calib_vals(BME280_DEVICE *dev)  // Gets the calibration coefficients into the variables
{
    dev->c_value.dig_T1 = get_word_u_LE(dev,dig_T1_REG);   
    dev->c_value.dig_T2 = get_word_s_LE(dev,dig_T2_REG);
    dev->c_value.dig_T3 = get_word_s_LE(dev,dig_T3_REG);

    dev->c_value.dig_P1 = get_word_u_LE(dev,dig_P1_REG);
    dev->c_value.dig_P2 = get_word_s_LE(dev,dig_P2_REG);
    dev->c_value.dig_P3 = get_word_s_LE(dev,dig_P3_REG);
    dev->c_value.dig_P4 = get_word_s_LE(dev,dig_P4_REG);
    dev->c_value.dig_P5 = get_word_s_LE(dev,dig_P5_REG);
    dev->c_value.dig_P6 = get_word_s_LE(dev,dig_P6_REG);
    dev->c_value.dig_P7 = get_word_s_LE(dev,dig_P7_REG);
    dev->c_value.dig_P8 = get_word_s_LE(dev,dig_P8_REG);
    dev->c_value.dig_P9 = get_word_s_LE(dev,dig_P9_REG);

    dev->c_value.dig_H1 = read_byte(dev,dig_H1_REG);
    dev->c_value.dig_H2 = get_word_s_LE(dev,dig_H2_REG);
    dev->c_value.dig_H3 = read_byte(dev,dig_H3_REG);
    dev->c_value.dig_H4 = (read_byte(dev,dig_H4_REG) << 4) | (read_byte(dev,dig_H4_REG+1) & 0xF);
    dev->c_value.dig_H5 = (read_byte(dev,dig_H5_REG+1) << 4) | (read_byte(dev,dig_H5_REG) >> 4);
    dev->c_value.dig_H6 = read_byte(dev,dig_H6_REG);
    
    return BME280_OK;       // Assume it was okay !
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="The temperature compensation formula out of the book P25">
BME280_S32_t  BME280_compensate_T_int32(BME280_DEVICE *dev,BME280_S32_t adc_T)
{   // This comes straight out of the book. See page 25
    BME280_S32_t var1, var2, T;

    // From BME280 data sheet: (page 25)
    var1  = ((((adc_T >> 3) - (dev->c_value.dig_T1 <<1))) * (dev->c_value.dig_T2)) >> 11;
    var2  = (((((adc_T>> 4) - (dev->c_value.dig_T1)) * ((adc_T>>4) - (dev->c_value.dig_T1))) >> 12) * (dev->c_value.dig_T3)) >> 14;
    t_fine = var1 + var2;
    T = (t_fine * 5 + 128) >> 8;
    return T;
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="The humidity compensation formula out of the book P25">
BME280_S32_t  BME280_compensate_H_int32(BME280_DEVICE *dev,BME280_S32_t adc_H)
{  // This comes straight out of the book. See page 25
    BME280_U32_t v_x1_u32r;
    
    v_x1_u32r = (t_fine - (BME280_U32_t)76800);   // Don't know the point of this line. I think it's an error
    
    v_x1_u32r = (((((adc_H << 14) - (((BME280_S32_t)dev->c_value.dig_H4) << 20) - ((dev->c_value.dig_H5) *
            v_x1_u32r)) + (16384)) >> 15) * (((((((v_x1_u32r *
            (dev->c_value.dig_H6)) >> 10) * (((v_x1_u32r * (dev->c_value.dig_H3)) >> 11) +
            (32768))) >> 10) + (2097152)) * (dev->c_value.dig_H2) + 8192) >> 14));
    v_x1_u32r = (v_x1_u32r - (((((v_x1_u32r >> 15) * (v_x1_u32r >> 15)) >> 7) * (dev->c_value.dig_H1)) >> 4));
    v_x1_u32r = (v_x1_u32r < 0) ? 0 : v_x1_u32r; 
    v_x1_u32r = (v_x1_u32r > 419430400) ? 419430400 : v_x1_u32r;
    
    return  (BME280_U32_t) (v_x1_u32r>>12);
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="The Pressure compensation formula out of the book P25">
BME280_S32_t  BME280_compensate_P_int64(BME280_DEVICE *dev,BME280_S32_t adc_P)
{  // This comes straight out of the book. See page 25
    
    BME280_S64_t var1, var2, p;

    var1 = ((BME280_S64_t)t_fine) - 128000;
    var2 = var1 * var1 * (BME280_S64_t)dev->c_value.dig_P6;
    var2 = var2 + ((var1*(BME280_S64_t)dev->c_value.dig_P5)<<17);
    var2 = var2 + (((BME280_S64_t)dev->c_value.dig_P4)<<35);
    var1 = ((var1 * var1 * (BME280_S64_t)dev->c_value.dig_P3)>>8) + ((var1 * (BME280_S64_t)dev->c_value.dig_P2)<<12);
    var1 = (((((BME280_S64_t)1)<<47)+var1))*((BME280_S64_t)dev->c_value.dig_P1)>>33;
    if (var1 == 0)
    { 
        return 0; // avoid exception caused by division by zero 
    }
    p = 1048576-adc_P;
    p = (((p<<31)-var2)*3125)/var1;
    var1 = (((BME280_S64_t)dev->c_value.dig_P9) * (p>>13) * (p>>13)) >> 25;
    var2 = (((BME280_S64_t)dev->c_value.dig_P8) * p) >> 19;
    p = ((p + var1 + var2) >> 8) + (((BME280_S64_t)dev->c_value.dig_P7)<<4); 

    return (BME280_U32_t) p;
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Burst read all parameter data from the device">
BME280_S8_t burst_read_all_3 (BME280_DEVICE *dev)
{
    dev->csb_Low();                 // Starts a read sequence
    dev->write_8bit(press_msb);     // set the first register to read as the lowest in the range.
    dev->adc_p.bitfield.press_msb_val = dev->read_8bit(0);  // keep reading and each subsequent register. BME280 auto increments
    dev->adc_p.bitfield.press_lsb_val = dev->read_8bit(0);  // Keep depositing the results of subsequent reads into the respective structure locations
    dev->adc_p.bitfield.press_xlsb_val = dev->read_8bit(0);

    dev->adc_t.bitfield.temp_msb_val = dev->read_8bit(0);
    dev->adc_t.bitfield.temp_lsb_val = dev->read_8bit(0);
    dev->adc_t.bitfield.temp_xlsb_val = dev->read_8bit(0);

    dev->adc_h.bitfield.hum_msb_val = dev->read_8bit(0);
    dev->adc_h.bitfield.hum_lsb_val = dev->read_8bit(0);

    dev->csb_High();  // This finalizes the burst and triggers any waiting transfer from shadow to main.

    dev->adc_p.concat_value >>= 4;    // ASR the whole 3 bytes to little endian
    dev->adc_t.concat_value >>= 4;

    return BME280_OK;       // Assume it was okay !

}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Initialise the BME280">
void BME280_init(BME280_DEVICE *dev)  // Just reads the calibration values from the device. They never change, so just do it once.
{
    dev->adc_t.concat_value = 0;
    dev->adc_h.concat_value = 0;
    dev->adc_p.concat_value = 0;
    
    retrieve_all_calib_vals(dev);  // This only has to be done once. They never change.
    dev->chip_id = read_byte(dev,BME280_id);    // 0xD0
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Invoke a read from the BME280">
// Starts the BME280 sensor, and gets a sample. MUST be run each time
// you wish to get a reading.
BME280_S8_t invoke_a_BME280_read(BME280_DEVICE *dev)
{
    write_byte(dev, CTRL_HUM, 0x01);   // F2 (72 on LOGIC analyzer) gets 01 (0x2F) Humidity oversampling = 1
    write_byte(dev, CONTROL, 0x25);    // F4 (74 on LOGIC analyzer) gets 25 (0x4F) Forced mode, Temp/Press oversampling = 1
    burst_read_all_3(dev);    // (0xF7) and convert the raw values into actual values         
    dev->Compensated_T = BME280_compensate_T_int32(dev,dev->adc_t.concat_value);    // Execute the compensation routines, as per book
    dev->Compensated_P = BME280_compensate_P_int64(dev,dev->adc_p.concat_value);
    dev->Compensated_H = BME280_compensate_H_int32(dev,dev->adc_h.concat_value);

    return BME280_OK;       // Assume it was okay !
}
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="The actual return functions">
    float readTemp (BME280_DEVICE *dev)
    {
        return (float) dev->Compensated_T / 100;
    }

    float readHumidity (BME280_DEVICE *dev)
    {
        return (float) dev->Compensated_H / 1024;
    }

    float readPressure (BME280_DEVICE *dev)
    {
        return (float) (dev->Compensated_P /256) / 100;
    }
// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Byte and word reading stuff">

// Gets an 8 bit value from the system defined (BME280_COM_FUNCTS) function
unsigned char read_byte(BME280_DEVICE *dev, char reg)
{
    uint8_t  read_value;
    dev->csb_Low();
//    read_value = dev->read_8bit(reg);    // Transmit register number. Don't care what get back in this transfer.
    read_value = dev->write_8bit(reg);    // Transmit register number. Don't care what get back in this transfer.
    read_value = dev->read_8bit(reg);    // Read response. Don't care what write out, but DO care what get back
    dev->csb_High();
    return read_value;
}

void write_byte(BME280_DEVICE *dev,char reg, char data)
// Sends an 8 bit value to the system defined (BME280_COM_FUNCTS) function
{
    reg = (reg & ~0x80);    // ~ is a one's complement
    dev->csb_Low();
    dev->write_8bit(reg);
    dev->write_8bit(data);
    dev->csb_High();
}

unsigned int get_word(BME280_DEVICE *dev, char reg)
// Formulates a 16 bit word from successive 8 bit read functions
{
    unsigned int val;
    val = read_byte(dev,reg); // shift in MSB
    val = val << 8 | read_byte(dev,reg+1); // shift in LSB
    return val;
}

unsigned int get_word_u_LE(BME280_DEVICE *dev,char reg)
// read 16-bits unsigned little endian
// Formulates a 16 bit unsigned LE word from a 16 bit word
{
    unsigned int val;
    val = get_word(dev, reg); 
    return (val >> 8) | (val << 8); // swap upper and lower regs
}

signed int get_word_s_LE(BME280_DEVICE *dev, char reg)
// read 16-bit signed little endian
// Formulates a 16 bit unsigned LE word from a 16 bit word
{
    return (signed int)get_word_u_LE(dev,reg);
}

// </editor-fold>

