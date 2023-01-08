# Opensource Rally Controller

## What is it?

This repository contains design files and the code required to create a cheap controller for digital roadbook rally events, such as those from Rally Moto in the UK

The designs are created using OpenSCAD, which allows the design of the physical parts using code, so even someone who doesn't have a creative bone in their body like me can use it and tweak things easily.

The code itself is written using Circuit Python, which has an excellent Human Interface Device (HID) library for creating what is essentially a USB keyboard with 4 buttons.

I initially used a Raspberry Pi Pico for this project, however, realising it was rather large, I switched to the Pimoroni Tiny2040. This made for a smaller controller, but any 2040 based microcontroller should work with minor modifications to the code and models.

## Required Tools

The following tools are what I have used to create the controller:

* A 3D Printer such as an Ender3
* Hot glue gun

## Bill of Materials

* 3D Printer Filament such as PLA
* Tiny2040
* Ziptie for mounting
* USB-C Cable
* 4 tactile switches
* Copper prototype board

## OpenSCAD Files
### Button
![Image of the Button model in OpenSCAD](img/button.png|width=100px)
The button is designed to be quick and easy to print, somewhat inspired by how an original gameboy button is help in place and prevents constant rotation.

### Button Box
![Image of the Lowerhalf of case in OpenSCAD](img/button_box.png|width=100px)
The lower half of the controller, this houses the Tiny2040 as well as a board with the tactile switches on.

### Handlebar Mount
![Image of the handlebar model in OpenSCAD](img/handlebar_mount.png|width=100px)

### Top Plate
![Image of the top half of the case model in OpenSCAD](img/top_plate.png|width=100px)
This is the top half of the box, which is seen from the rider's point of view, it also contains the buttons, and has threaded inserts to allow the box to be screwed together.

## Build Guide

Coming Soon


