---
layout: default
title: CNC Howto - Collexion
---

# CNC Howto

There are a few steps involved in cutting an object using the CNC machine.

*Object design and export


*Conversion to machine instructions (GCode)


*Preparing the material and workspace


*Loading the design to the CNC and preparing the machine


*Cutting


*Cleanup##Contents

*[1 
Design](#Design)


*[2 
Conversion](#Conversion)


*[3 
Preparing your workspace](#Preparing_your_workspace)


*[4 
Load your design](#Load_your_design)


*[5 
Cleanup](#Cleanup)


*[6 
See Also](#See_Also)##Design


You will want to design your object using a software that can export to a format that is standard for a CNC toolchain.  These formats are

*DXF


*STLPrograms that are known to work well:

*Inkscape (DXF)


*OpenSCAD (STL)##Conversion


Converting intermediate format to gcode instructions go here.

PyCam / PyCad ?

CamBam ?

Rhino ?

##Preparing your workspace


*Load your cutting material on the platform.


*Secure it.


*Make sure you are not obstructed.


*Know the location of the emergency stop button.


*Don eye and ear protection.##Load your design


*Plug a USB stick containing your GCode into the controller machine.  Load it with Mach3.


*Power on the motors.


*Zero the machine.


*Make sure everyone is wearing protective gear.


*Turn on the router and the dust collector.


*Make sure you can stop the cut at any time by the emergency stop or using Mach3.


*Begin your cut.##Cleanup


*Turn of the machinery.


*Unload your material.


*Take off your protective gear.


*Clean the work surface.


*Remove your USB drive from the CNC Controller.


*Take photos and and describe your process to the mailing list.##See Also


*[History of Collexion's CNC Router](-cnc.html)