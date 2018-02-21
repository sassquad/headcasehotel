# Headcase Hotel
An arcade adventure game written for the BBC Micro.

![Image of Headcase Hotel](https://www.sassquad.net/images/riscos/headcase1.png)
![Image of Headcase Hotel](https://www.sassquad.net/images/riscos/headcase2.png)
![Image of Headcase Hotel](https://www.sassquad.net/images/riscos/headcase3.png)

## Play the game online
The game is available to play online, via the Javascript BBC Micro Emulator [jsBeeb](https://github.com/mattgodbolt/jsbeeb):

https://bbc.godbolt.org/?disc=https://www.sassquad.net/downloads/HeadcaseHotel.ssd&autoboot

## Watch a video of the game

https://youtu.be/9C02rzUAaLY

## About the game

Headcase Hotel is an arcade adventure game written over various periods of time between 1992 and 1995, with much of the development work taking place in 1995, in preparation for an end of year graphic design show.

Written for the BBC Micro, the game is written predominantly in BBC Basic, with some elements of 6502 assembly language for sprite plotting. The game runs in four colour MODE 5, a low resolution (640 x 256 pixel) display which used 10k of the BBC Micro's memory.

There are three main files, one to generate the sprite data, one to display instructions, setup sounds and UI graphics, with the last file being the game code itself. In the case of the latter, I've had to include the line numbers, due to the many GOTOs and GOSUBs employed at the time.

I've added the code here so that it is easier to browse for historical purposes.
