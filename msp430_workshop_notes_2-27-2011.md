---
layout: default
title: MSP430 Workshop notes 2/27/2011 - Collexion
---

# MSP430 Workshop notes 2/27/2011

Here are the notes from our TI MSP430 programming workshop, held 2/27/2011. Our goal was to get working build environments on our PCs and be able to program the LED on the ez430 development sticks from Texas Instruments. We succeeded!

##Contents

*[1 
Code](#Code)


*[2 
Links](#Links)

*[2.1 
Tools](#Tools)


*[2.2 
Info](#Info)##Code


Once compiled, you can use mspdebug's 'prog' command to load the .elf binary onto the device:

mspdebug -d /dev/ttyUSB0 uif 'prog blinky430.elf'

Here's the blinky code we used to test the toolchain, modified from TI's blinky code to make it more readable for non-C programmers:

/*

  blinky430.c

*/
#include <msp430x20x3.h>

void main(void)
{
	// The watchdog timer will periodically reset the chip if we haven't poked it
	// Initialize the WDT (WDTPW) and turn that behavior off (WDTHOLD)
	WDTCTL = WDTPW + WDTHOLD;

	// Mark P1.0 as an output pin by setting P1DIR's LSB to 1
	P1DIR = P1DIR | 0x01;

	while (1)	// Infinite loop
	{
		// Flip LED state
		// Invert pin P1.0, port 1 bitwise XOR with 0000 0001
		P1OUT = P1OUT ^ 0x01;

		// Wait
		i = 20000;
		while ( i > 0 ) {
			i--;
		}
	}
}

And here's some code that can make the LED pulse up and down, rather than flash on and off:

/*

  pulse430.c

*/
#include <msp430x20x3.h>

// Constants for pulse width increment and cycle time (sum of LED on + off time)
#define INCR  1
#define CYCLE 250

void main(void)
{
	// The watchdog timer will periodically reset the chip if we haven't poked it
	// Initialize the WDT (WDTPW) and turn that behavior off (WDTHOLD)
	WDTCTL = WDTPW + WDTHOLD;

	// Mark P1.0 as an output pin by setting P1DIR's LSB to 1
	P1DIR = P1DIR | 0x01;

	// Starting value for the LED pulse width
	unsigned int width = 11;

	// Per-cycle pulse width delta (how much longer to stay lit each cycle)
	unsigned int incr = INCR;

	// Loop counter
	unsigned long i;

	while (1)	// Infinite loop
	{

		// == LED ON ==
		// Turn on pin P1.0, port 1 bitwise OR with 0000 0001
		P1OUT = P1OUT | 0x01;

		// Wait
		i = width;
		while ( i > 0 ) {
			i--;
		}

		// == LED OFF ==
		// Turn off pin P1.0, port 1 bitwise AND with 1111 1110
		P1OUT = P1OUT & 0xFE;

		// Wait out the remainder of the cycle
		i = CYCLE - width;
		while ( i > 0 ) {
			i--;
		}

		// == UPDATE PULSE WIDTH ==
		width += incr;

		// If we've hit the minimum or maximum pulse width, start moving the width
		// in the other direction
		if ( width >= CYCLE - 30 || width < 1) {
			incr = -incr;
		}

	}
}



##Links


###Tools


*[mspgcc4 (sourceforge.net)](http://sourceforge.net/projects/mspgcc4/files/mspgcc4/)

*Extract the latest tarball, run 
./build_gcc.sh


*Will download binutils, gcc, gdb, and compile them (may take a LONG time)


*Will default to installing under /opt/*[mspdebug (sourceforge.net)](http://mspdebug.sourceforge.net/download.html)

*In Ubuntu, first install dependencies: 
apt-get install libreadline-dev libusb-dev


*Put the 'mspdebug' binary in the bin/ directory established when you installed mspgcc4###Info


*[MSP430 USB Stick user's guide (ti.com)](http://focus.ti.com/docs/toolsw/folders/print/ez430-f2013.html)

*Schematic of development board


*Notes on device capabilities*[Step by Step Guide To MSP430 Programming with Eclipse under Linux (43oh.com)](http://www.43oh.com/2010/11/a-step-by-step-guide-msp430-programming-under-linux/)

*Used 
[mspdebug](http://mspdebug.sourceforge.net/download.html) in the console to program/debug the chip


*We didn't try mspdebug + Eclipse as documented on this page, but would expect it to work well


*Couldn't get Eclipse to connect to the msp430-gdbproxy instance and debug on the device


*In the latest version of Eclipse, if using msp430-gdbproxy, use the debugger type "gdbserver Debugger" instead of "remote gdb/mi"*[TI Launchbread, a practical example of wiring/coding/flashing (simpleavr.com)](http://www.simpleavr.com/msp430-projects/ti-launchbread)*[MSP430 basic coding & programing part 1 (justinstech.org)](http://justinstech.org/2010/08/msp430-basic-codingprograming-part-1/)*[MSP430 basic coding & programing part 2, watchdog timer examples (justinstech.org)](http://justinstech.org/2010/08/msp430-basic-codingprograming-part-2-wdt/)