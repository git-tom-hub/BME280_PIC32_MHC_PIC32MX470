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

// <editor-fold defaultstate="collapsed" desc="Includes">
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <string.h>
#include <math.h>
#include "definitions.h"                // SYS function prototypes

// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Defines">

//___________________________________________

#if !defined(INT32_C) && !defined(UINT32_C)
#define INT32_C    unsigned long int
#define UINT32_C    signed long int
#endif
//___________________________________________



#ifndef BME280_H
#define BME280_H

#define BME280_U8_t   uint8_t
#define BME280_S8_t   int8_t

#define BME280_U16_t  uint16_t
#define BME280_S16_t  int16_t

#define BME280_U32_t  unsigned long int
#define BME280_S32_t  signed long int

#define BME280_U64_t  unsigned long long int
#define BME280_S64_t  signed long long int

// To delete
// #define SCK LATCbits.LC3 // SPI Clock 
// #define SDO LATCbits.LC5 // Serial Data Out
// #define SDI LATCbits.LC4 // Serial Data In
// #define CSB LATAbits.LA5 // Chip Select

#define BME280_reset 0xE0   // Write 0xB6 (only) to this register to reset the device
#define BME280_id   0xD0  //  Reading this address gives the chip_id 60 hex for BME 58 hex for BMP

#define CTRL_HUM    0xF2  // BME280 humidity register settings
#define CONTROL     0xF4 //BME280 control register
#define press_msb   0xF7 // BME280 pressure reg
#define press_lsb   0xF8 // BME280 pressure reg
#define press_xlsb  0xF9 // BME280 pressure reg
#define temp_msb    0xFA // BME280 temperature reg
#define temp_lsb    0xFB // BME280 temperature reg
#define temp_xlsb   0xFC // BME280 temperature reg
#define hum_msb     0xFD // BME280 humidity reg
#define hum_lsb     0xFE // BME280 humidity reg
#define dig_T1_REG  0x88 // BME280 temp calibration coefficients...
#define dig_T2_REG  0x8A
#define dig_T3_REG  0x8C
#define dig_H1_REG  0xA1 // BME280 humidity calibration coefficients...
#define dig_H2_REG  0xE1
#define dig_H3_REG  0xE3
#define dig_H4_REG  0xE4
#define dig_H5_REG  0xE5
#define dig_H6_REG  0xE7
#define dig_P1_REG  0x8E // BME280 pressure calibration coefficients...
#define dig_P2_REG  0x90
#define dig_P3_REG  0x92
#define dig_P4_REG  0x94
#define dig_P5_REG  0x96
#define dig_P6_REG  0x98
#define dig_P7_REG  0x9A
#define dig_P8_REG  0x9C
#define dig_P9_REG  0x9E

#define BME280_CHIP_ID                    BME280_U8_t(0x60)
#define BME280_OK                         (0)

/**\name API error codes */
#define BME280_E_NULL_PTR                 (-1)
#define BME280_E_DEV_NOT_FOUND            BME280_S8_t(-2)
#define BME280_E_INVALID_LEN              BME280_S8_t(-3)
#define BME280_E_COMM_FAIL                BME280_S8_t(-4)
#define BME280_E_SLEEP_MODE_FAIL          BME280_S8_t(-5)
#define BME280_E_NVM_COPY_FAILED          BME280_S8_t(-6)

// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Definition of the data structure for the device">
typedef struct      // These are the place holders for the compensation values read from the device.
{
    BME280_U16_t dig_T1; 
    BME280_S16_t dig_T2;
    BME280_S16_t dig_T3;

    BME280_U16_t dig_P1;
    BME280_S16_t dig_P2;
    BME280_S16_t dig_P3;
    BME280_S16_t dig_P4;
    BME280_S16_t dig_P5;
    BME280_S16_t dig_P6;
    BME280_S16_t dig_P7;
    BME280_S16_t dig_P8;
    BME280_S16_t dig_P9;

    BME280_U8_t  dig_H1;
    BME280_S16_t dig_H2;
    BME280_U8_t  dig_H3;
    BME280_S16_t dig_H4;
    BME280_S16_t dig_H5;
    BME280_S8_t  dig_H6;
} comp_val;

typedef union   // This is the declaration of the pressure values read from byte registers from the device
{
  struct
    {
        BME280_U32_t  press_xlsb_val : 8;   // The lowest 8 bits
        BME280_U32_t  press_lsb_val  : 8;   // The next 8 bits 
        BME280_U32_t  press_msb_val  : 8;   // The upper 8
    } bitfield;
    BME280_U32_t  concat_value;
} ADC_P;

typedef union   // This is the declaration of the humidity values read from byte registers from the device
{
    struct
    {
        BME280_U32_t  hum_lsb_val : 8;   // The lowest 8 bits
        BME280_U32_t  hum_msb_val : 8;   // The next 8 bits 
    } bitfield;
    BME280_U32_t  concat_value;
} ADC_H;

typedef union   // This is the declaration of the temperature values read from byte registers from the device
{
  struct
    {
        BME280_U32_t  temp_xlsb_val : 8;   // The lowest 8 bits
        BME280_U32_t  temp_lsb_val  : 8;   // The next 8 bits 
        BME280_U32_t  temp_msb_val  : 8;   // The upper 8
    } bitfield;
    BME280_U32_t  concat_value;
} ADC_T;

// uint8_t SPI2_Exchange8bit( uint8_t data );   //Template from SPI2.h from MCC SPI library

typedef uint8_t (*USR_8BIT_READ_PTR )(uint8_t);    // This just declares the pointer type for the 8bit read / write functions
typedef uint8_t (*USR_8BIT_WRITE_PTR)(uint8_t);    // This just declares the pointer type for the 8bit read / write functions
typedef void (*bme280_CSB_fptr_t)(void);    // This just declares the pointer type for the CSB lines
// Doing it this way ensures that the correct CSB line is manipulated as it is associated with the device. 

typedef struct      // This is the actual storage structure. It's a culmination of all the 
                    // Individual structures above. It represents the device and all it's parameters.
{
    uint8_t chip_id;            // This is the chip read from the device. Should be 60 hex for BME280
    uint8_t dev_id;             // This is the device ID of the particular device IN THE SYSTEM. 
    bme280_CSB_fptr_t csb_High; // This is a pointer to the user supplied function that raises the CSB
    bme280_CSB_fptr_t csb_Low;  // This is a pointer to the user supplied function that lowers the CSB
    USR_8BIT_READ_PTR read_8bit;     // User supplied function that reads 8 bit. i.e. MCC SPI2_Exchange8bit()
    USR_8BIT_WRITE_PTR write_8bit;   // User supplied function that writes 8 bit. i.e. MCC SPI2_Exchange8bit()
    comp_val c_value;           // This is the array of all the compensation values read off device
    ADC_P adc_p;                // The RAW data read off the device 8 bit registers
    ADC_H adc_h;                // The RAW data read off the device 8 bit registers
    ADC_T adc_t;      // The RAW data read off the device 8 bit registers
    BME280_U32_t Compensated_T; // The final compensated data. The raw data and the compensation values sent through the supplied routines
    BME280_U32_t Compensated_P; // The final compensated data.
    BME280_U32_t Compensated_H; // The final compensated data.
    
} BME280_DEVICE;

// </editor-fold>

// <editor-fold defaultstate="collapsed" desc="Templates">

// NOTE: this have to be AFTER the declaration of the BME280_DEVICE structure

//This just displays the contents of the parameter data structure.
//It's just a utility function for testing.
void show_raw_data (BME280_DEVICE *dev);

BME280_S8_t null_ptr_check(BME280_DEVICE *dev);

// Reads all the device parameters and executes the conversion routine.
// Note that ALL data retrieved from the device is stored in a structure.
BME280_S8_t burst_read_all_3 (BME280_DEVICE *dev);

//These are the compensation formulas straight out of the book, page 25
BME280_S32_t  BME280_compensate_P_int64(BME280_DEVICE *dev,BME280_S32_t adc_P);
BME280_S32_t  BME280_compensate_H_int32(BME280_DEVICE *dev,BME280_S32_t adc_H);
BME280_S32_t  BME280_compensate_T_int32(BME280_DEVICE *dev,BME280_S32_t adc_T);

//Forces a sample of the BME280. Also sets oversampling for humidity, temp and press = 1.
//Consult the BME280 Datasheet to change these options. 
BME280_S8_t invoke_a_BME280_read(BME280_DEVICE *dev);

//reads all the compensation values from the device into variables for use later
void BME280_init(BME280_DEVICE *dev);

//Write a byte to a register via SPI 
void write_byte(BME280_DEVICE *dev,char reg, char data);

// return a unsigned 16-bit value 
unsigned int get_word(BME280_DEVICE *dev, char reg);

// return a unsigned 8-bit value
unsigned char read_byte(BME280_DEVICE *dev, char reg);
// returns a unsigned 16-bit (little endian) 

unsigned int get_word_u_LE(BME280_DEVICE *dev,char reg);

// returns a unsigned 16-bit (little endian)
signed int get_word_s_LE(BME280_DEVICE *dev,char reg); 

// get temperature and returns it in Celsius
float readTemp(BME280_DEVICE *dev); 

// gets RH humidity and returns it as a percentage
float readHumidity(BME280_DEVICE *dev);

// gets pressure and returns it in kPa.
float readPressure(BME280_DEVICE *dev); 

#endif // BME280_H

// </editor-fold>

