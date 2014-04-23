---
layout: default
title: RFID Door Lock Project - Collexion
---

# RFID Door Lock Project

##RFID Door Lock Project


Goal:
To create a electromechanical interface to a standard door lock so guests can come and go, without the issues of handing out physical door keys.

Usage:
Swipe the issued RFID tag to lock and unlock the door as if you had a key!
There are two different kinds of setting for a tag.  Master user and User, Master has the ability to add new users, the standard User does not.

Adding users:
The process for adding users is fairly simple the one catch is that you have 5 seconds to complete everything.  Follow the below instructions:

1) Open door.  Door must be open!!!

2) Push the UP arrow key

3) Swipe a master user RFID

4) Push the RED button to activate a master user key or the GREEN button to activate a user key.

5) Swipe the new user RFID

6) Done.  Check the key to confirm function.  I have noticed some tags are not working...

Deleting users:
Not currently supported.

Details:
A dsPIC30F4012 micro-controller on a custom routed board is connected to a dc motor, LCD operator panel, RFID reader and a door closed switch.

The motor mount, pinion and mating gear are printed on a 3D printer.

The LCD panel communicates over I2C.
The RFID reader is manufactured by Parallax.  It communicates over a UART.
An Allegro motor driver is used to power the motor.

The firmware is written for Microchip's C30 compiler.

Current State:

8/19/2011:
Door lock is somewhat functional.  Many pieces are there, but during the first few weeks of operation it is obvious the motor does not have what it takes to operate the lock.

I am in the process of printing out a new gear set, with a 43/13 ratio instead of 1:1.  This will help a lot by lowering the load on the motor.  Also, the motor is having some difficulty at 5V operation.  This seems to be a combination of the motor resistance and transistor drop in the motor driver.  So I will need to up the operating voltage to 12V and add a 5V regulator.  Time to route out another card!  Projected ETA: 08/??/2011

Owner: Christopher Yeager