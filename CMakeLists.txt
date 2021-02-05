cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)

project(blink)

pico_sdk_init()

add_executable(lcd_2004_i2c
        lcd_20004_i2c.c
        )

# Pull in our (to be renamed) simple get you started dependencies
target_link_libraries(lcd_2004_i2c pico_stdlib hardware_i2c)

# create map/bin/hex file etc.
pico_add_extra_outputs(lcd_2004_i2c)
