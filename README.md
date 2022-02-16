# BME280_PIC33_MHC_PIC32MX470
This is my SPI version of the Getting Started with PIC32MX470 demo application.  

I purchased a Curiosity PIC32MX470 board and the BME280 Click and the USB UART click as per the instructions in the Microchip "Getting started with PIC32MX470" application. 
It used the I2C interface to the BME280 board. The board comes with the hard-wired settings in teh I2C positions. 
I tried the application, "Straight out of the box" using the application downloaded and unchanged.
It ran, but the communication with the BME280 library were just not working. It was blocking.
If I wemoved the calls to the BME280 function, the application worked in all other respects. 

As I was familiar with the device and had my own driver, instead of debuging the 'canned' appliction, I just implemented my driver and changed the Click board to the SPI settings.

I share the result here for anyone else who is having issues with the "Getting started with PIC32MX470" application.

I am biased, but I think my implementation of the BME 280 driver is the best I've seen.


