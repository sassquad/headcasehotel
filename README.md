# headcasehotel
An arcade adventure game written for the BBC Micro

## Play the game online
The game is available to play online, via the Javascript BBC Micro Emulator [jsBeeb](https://github.com/mattgodbolt/jsbeeb):

http://bbc.godbolt.org/?disc=http://www.sassquad.com/downloads/HeadcaseHotel.ssd&autoboot

## Watch a video of the game

https://youtu.be/9C02rzUAaLY

## About the game

Headcase Hotel is an arcade adventure game written over various periods of time between 1992 and 1995, with much of the development work taking place in 1995, in preparation for an end of year graphic design show.

Written for the BBC Micro, the game is written predominantly in BBC Basic, with some elements of 6502 assembly language for sprite plotting. The game runs in four colour MODE 5, which is a low resolution (640 x 256) display which uses 10k of the BBC Micro's memory.

There are three main files, one to generate the sprite data, one to display instructions and setup sounds and UI graphics, and the game code itself. In the case of the latter, I've had to include the line numbers, due to the many GOTOs and GOSUBs employed at the time.

I've added the code here so that it is easier to browse for historical purposes.
