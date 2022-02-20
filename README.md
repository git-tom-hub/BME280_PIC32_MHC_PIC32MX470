# BME280_PIC32_MHC_PIC32MX470
This is my SPI version of the "Getting Started with PIC32MX470" demo application.  

I purchased a Curiosity PIC32MX470 board and the BME280 Click and the USB UART click as per the instructions in the Microchip "Getting started with PIC32MX470" application. 
It used the I2C interface to the BME280 board. The board comes with the hard-wired settings in the I2C positions. 
I tried the application, "Straight out of the box" using the application downloaded and unchanged.
It ran, but the communication with the BME280 library were just not working. It was blocking.
If I removed the all calls to the BME280_driver library, the application worked in all other respects. 

As I was familiar with the device and had my own driver, so instead of debuging the 'canned' application, I just implemented my driver and changed the Click board to the SPI settings.

I share the result here for anyone else who is having issues with the "Getting started with PIC32MX470" application.

My driver handles multiple instances of the device.


This effort came about in my mission to transition from PIC 24 and MCC to Harmony 3 MHC and PIC32's.
Was an interesting exercise. I've never used Harmony before. 
I'm quickly starting to like it as much as I love MCC.

It seems em just a different GUI achieving the same thing. 
My only thought on that is - Why?




