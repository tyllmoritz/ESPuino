# Tonuino based on ESP32-A1S Audio-Development-Kit

AI-Tinker released (almost two years ago or so) a development-board that contains an ESP32-A1S, which means a DAC is already included upfront. It's sorta ready to use but in the end, to make it compatible with my Tonuino-fork, there's some work waiting.

## Things to know
* As there's a lack of GPIOs, it's necessary to share a single SPI-instance by SD and RFID.
* As per default, [RFID-Lib](https://github.com/miguelbalboa/rfid/) doesn't support to run on non-default-SPI-GPIOs. So that's why I used a [modified one](https://github.com/madias123/STM32duino-RFID-Mp3-Player/tree/master/3d%20party%20libraries%20(modified)/MFRC522).
* The board provides 6 keys but due to lack of free GPIOs, we need them for other purposes. Additionaly the problem is, that all keys are equipped with capacitors (maybe to debounce) which makes it hard to use those GPIOs for other purposes. That's why I unsoldered R66, 67, 68, 69, 70 (all 0 Ohms) to free these GPIOs from the capacitors.
* Please note: key1 still works but if you additionaly want to use keys2-6, you can use GPIO36 along with analogRead() by using voltage-dividers. But first one has to calculate + solder resistor-pairs 56/61, 57/62, 58/63, 59/64 to 'build' those voltage-dividers. Without doing that online Key1 is usable as it doesn't need resistors. However, didn't solder/test dividers so far.
* When switching over to use analogRead() one has to modify buttonHandler() in my code.
* Additionaly I unsoldered resistor R14 in order to deactivate LED D4 (probably not necessary)

## GPIOS
Please note: You need to unsolder R66, 67, 68, 69, 70 first to use the board that way!

| GPIO          | Usage            | Pin         | Comment                                                      |
| ------------- | -----------------| ----------- | ------------------------------------------------------------ |
| 0             | internal (I2S)   | MCLK        |                                                              |
| 2             | SD (int.) + RFID | SPI.MISO    | Solder wire to SD.7 for RFID                                 |
| 4             | Rot. Encoder     | BUTTON      | Solder wire to SD.8                                          |
| 5             | Rot. Encoder     | CLK         | Via 14-pin-header                                            |
| 12            | RFID             | SPI.CS      | Via JT_MTDI                                                  |
| 13            | internal (SD)    | SPI.CS      | CS for SD                                                    |
| 14            | SD (int.) + RFID | SPI.SCK     | Via JT_MTMS                                                  |
| 15            | SD (int.) + RFID | SPI.MOSI    | Via JT_MTDO                                                  |
| 18            | Rot. Encoder     | DT          | Via 14-pin-header                                            |
| 19            | Power            |             | For switch on/off external hardware via MOSFET (optional)    |
| 21            | internal (amp)   |             | To switch on/off amp                                         |
| 22            | unused?          |             | Via 14-pin-header                                            |
| 23            | Neopixel         | DI          | Via 14-pin-header                                            |
| 25            | internal (I2S)   | DSIN        |                                                              |
| 26            | internal (I2S)   | LRC         |                                                              |
| 27            | internal (I2S)   | BCLK        |                                                              |
| 32            | internal (I2C)   | CLK         |                                                              |
| 33            | internal (I2C)   | DATA        |                                                              |
| 34            | internal (SD)    | DETECT      | To detect if SD is present (not used)                        |
| 35            | internal (I2S)   | DOUT        |                                                              |
| 36            | internal (Key)   | A/D         | Analog read for keys 1-6 or digial read for only key 1       |
| 39            | internal (HP)    | DETECT      | Detects if headphone is plugged in                           |


Now, question is what to do with GPIO22. Could be used to externally connect keys for analogRead() via voltage-dividers.

## Power-consumption
* IDLE: 105 mA
* Deepsleep (without RFID + Neopixel): 30 mA

## Things to consider
* I didn't battery-power this board (guess it works but didn't test). But as current in deepsleep still is 30 mA, this probably doesn't make sense.
* When using a switch (instead of putting 'only' to deepsleep), GPIO 19 (power) could be omitted. Along with GPIO 22, these buttons could be used as buttons 'previous' and 'next'. Third button could be omitted by assigning short-press-action of rotary-encoder for 'pause/play'.
* In order to safe energy consider the unsolder LEDs.

## Please note
* This one is more or less a project to test whether it's possible to run my fork on this special board. It's not really maintained actively but feel free to contact me in case of questions.
* Some additional informations regarding this board can be found [here](https://www.mikrocontroller.net/topic/474383?goto=6429727) and [here] (https://www.mikrocontroller.net/topic/492149).
* I discovered RFID.RST is uninportant. So you need to initialize it but doesn't matter whether it's connected or not. So I used just anything.