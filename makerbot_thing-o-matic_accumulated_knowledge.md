---
layout: default
title: Makerbot Thing-O-Matic accumulated knowledge - Collexion
---

# Makerbot Thing-O-Matic accumulated knowledge

[![](/mw/images/5/57/3775andAle81.jpg)](-file:3775andale81.jpg.html)  
[![](/mw/skins/common/images/magnify-clip.png)](-file:3775andale81.jpg.html)Makerbot Thing-O-Matic #3775

##Required Reading


From the Thing-O-Matic Assembly Instructions / User Manual:

*[Testing Your Bot: Testing Your Axes](http://wiki.makerbot.com/thingomatic-doc:testing-your-bot#toc5) - Make sure the axes are going the right direction and invert if necessary; do this every time you sit down for a new printing session.


*[How To Print](http://wiki.makerbot.com/thingomatic-doc:how-to-print)ReplicatorG and skeinforge configuration (USE THIS TOOL to generate numbers to plug into your software):

*[Makerblock's Profilemaker](http://makerblock.com/profilemaker) - Try 0.4mm layer height, 0.5mm thread width, and 2.84mm filament diameter (or measure it yourself with a caliper). Then load up ReplicatorG, open a .STL file, click the "Generate GCode" button, select your configuration profile and click "Edit..." to open skeinforge. Enter the profile maker's settings in skeinforge, click Save All, and return to ReplicatorG to generate gcode and begin printing.


*Make sure you 
[modify ReplicatorG's start.gcode](http://wiki.makerbot.com/thingomatic-doc:how-to-print#toc5) as shown below.##Suggested Reading


*[Don't Do That!](http://wiki.makerbot.com/cupcake-dont-do-that)


*[Makerbot Party Mode](http://blog.makerbot.com/2011/03/10/maker-bot-party-mode/)Example start.gcode:

(**** beginning of start.gcode ****)
(This file is for a MakerBot Thing-O-Matic)
(**** begin initialization commands ****)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 R1.98 (set extruder speed)
M103 (Make sure extruder is off)
M104 S225 T0 (set extruder temperature)
M109 S115 T0 (set heated-build-platform temperature)                    <------- Change this
(**** end initialization commands ****)
(**** begin homing ****)
G162 Z F500 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
G92 Z107.2 ( ---=== Set Z axis maximum ===--- )                         <------- and this
G92 X-57.5 Y-57 (set zero for X and Y)
(**** end homing ****)
(**** begin pre-wipe commands ****)
G1 X52 Y-57.0 Z10 F3300.0 (move to waiting position)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
M101 (Extruder on, forward)
G04 P5000 (Wait t/1000 seconds)
M103 (Extruder off)
(**** end pre-wipe commands ****)
(**** end of start.gcode ****)