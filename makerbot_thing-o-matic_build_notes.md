---
layout: default
title: Makerbot Thing-O-Matic build notes - Collexion
---

# Makerbot Thing-O-Matic build notes

This space is intended to document progress on our Makerbot build. It should contain any information that other builders or future users might need to know, as well as general build status.

TIMELAPSE VIDEO AVAILABLE!!
We grabbed frames from our networked webcam during the build and cut it into a timelapse video. Go 
[check it out](http://vimeo.com/collexion/makerbot-build).



* while true; do sleep 10; wget http://172.30.1.253/jpg/image.jpg; mv image.jpg `date +%Y%m%d%H%M%S`_makerbot.jpg; doneor, remotely:

* while true; do sleep 60; wget http://lamecam.com/collexion/cam0.jpg; mv cam0.jpg `date +%Y%m%d%H%M%S`_makerbot.jpg; done;(as of Mon Feb 28 00:30 this is now happening server-side on lamecam.  Bit late, I know, but...)



##2/26/2011 — Initial build session. All parts packages accounted for.


Tools to bring to the space for build sessions:

* Utility knife and/or scissors

* Needle-nose pliers

[![](/mw/images/1/14/Broken_rib_front.jpg)](file:broken_rib_front.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:broken_rib_front.jpg)Broken rib, front

[![](/mw/images/f/fa/Broken_rib_back.jpg)](file:broken_rib_back.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:broken_rib_back.jpg)Broken rib, back

We broke one of the Automated Build Platform's wooden ribs (with bushings for the drive rods). Some of the corners are really delicate. We repaired it with epoxy inside, a dab of hot glue outside, and marked the joint with black arrows in case it causes problems down the road.

The ABP's conveyor belt was too wide, wider than it appears in photos of other people's platforms. We trimmed it down to about 0.5cm inside the foil heat spreader on either side. This may be too narrow, but we have spares.

The ABP's conveyor belt is also 
very tight (UPDATE: it's 
[supposed to be that way](http://wiki.makerbot.com/forum/t-309109/man-that-s-a-tight-fit)). It's difficult to move by hand, and it's bowing the rollers on either end. The kit contains three loops of conveyor plastic and two strips of conveyor plastic that look like they're intended to be taped into loops. No explanation for the strips in the instructions, and no mention of roller tightness.

Accomplished:

* FINISHED - X-stage (Automated Build Platform)

* FINISHED - Y-stage

* FINISHED - Z-stage

* FINISHED - Motherboard firmware update

* FINISHED - Extruder firmware updateIn Progress:

* Extruder assembly in progress (Next step: 
[Superglue spacer feet to support](http://wiki.makerbot.com/stepstruder-mk6-assembly-3mm#toc59).)

* Electronics mounting in progressFor next time:

* Check X-stage belt's tooth count; it's really loose, and it may be the wrong one -- It appears that the X-stage motor just needs to be adjusted by pulling the left top cap off the Y-stage assembly and sliding the motor to take up the slack.

*

##3/2/2011 — Second build session. Massive progress.


[![](/mw/images/2/2f/Session_2_photo_1.jpg)](file:session_2_photo_1.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:session_2_photo_1.jpg)Collexion folk working through the electronics, extruder, and body assembly

With the X, Y, and Z stages complete, we took to assembling the body, mounting the rest of the electronics, and continuing work on the extruder.

It didn't seem that there was a good way to mount the extruder control board. If mounted as directed, it would be just about impossible to reach the USB port for firmware updates, and wires would need to be run to the screw terminals before the board was mounted to the bottom of the box because of clearance issues with the main motherboard. We turned it around to make the RJ-45, USB, and screw terminals face the outsides of the machine, but the included RJ-45 cable's strain relief boot is too long to fit inside the box when it's plugged into the extruder board. We're going to try making a custom cable as a remedy; cable, ends, and crimpers are living at the space.

There were two problems attaching the Y motor to the acrylic middle piece. The first was that in tightening the mounting bolts, we split the acrylic in at least three of the four mounting slots. The splits are small, but may lengthen under operating conditions. Here's hoping that doesn't happen, since we still haven't figured out how to get replacement wooden/acrylic parts for the machine.

The second problem was that the motor needed to be mounted all the way at the back of its slots to keep tension on the Y-axis toothed belt. Unfortunately, one of the mounting slots shares real estate with a T-joint slot in the acrylic, and the motor mounting bolt interferes with the nut for a T-joint mounting bolt. We may be able to just carefully cram everything in, but it won't be easy.



[![](/mw/images/5/54/Session_2_photo_2.jpg)](file:session_2_photo_2.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:session_2_photo_2.jpg)The box is shaping up! Extruder, too!

The body assembly instructions never really say at what point you're supposed to screw the body together. We're just going to do it. The body setup also calls for five M4x50mm bolts, but our kit only contained three. We've only needed one so far, so our fingers are crossed.

We didn't have any high-temperature solder on hand for the heater resistors, so we used regular solder. One of our builders said he'd read that regular solder may give up the ghost after around 100 hours of use. We should revisit those solder joints when we've procured some of the high-temp stuff. It should be available from plumbing supply stores or maybe even Harbor Freight.

There's a step in the extruder instructions that says to "
[solder the red/black wire to the motor wires](http://wiki.makerbot.com/stepstruder-mk6-assembly-3mm#toc75)". That didn't make much sense; it sounds like the instructions want you to connect the heater to the wires from one of the motors in the machine, but it doesn't say which one! On further reading, it sounds like "motor wires" refers to the physical properties of the wire and not the system to which it's connected. The directions could be clearer (a sentiment echoed several times during this build session).

Lots of progress. We might have this thing licked at our next build session!

Accomplished:

* FINISHED - Mounting electronicsIn Progress:

* Extruder assembly

* Body assemblyFor next time:

* Adjust the X-stage drive belt; pull off the Y-stage's left top cap, loosen motor mount bolts, slide the motor back until all the slack is out of the belt, and retighten.

* Build an RJ-45-terminated cable for the extruder control board

* Finish extruder assembly (Next step? Maybe 
[Insulate wires](http://wiki.makerbot.com/stepstruder-mk6-assembly-3mm#toc76)?)

* Test extruder per instructions

* Finish body assembly

* Screw the body panels together for real

* Finish securing the XY stage rods as detailed in: 
[Adding XY stage](http://wiki.makerbot.com/thingomatic-doc:body-assembly#toc17)

* Then resume the build at: 
[Adding Z stage](http://wiki.makerbot.com/thingomatic-doc:body-assembly#toc21)

##3/9/2011 — Build Session The Thirde.


Misery and woe!



[![](/mw/images/a/aa/Cracked_acrylic.jpg)](file:cracked_acrylic.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:cracked_acrylic.jpg)After a week, our acrylic looked terrible

We arrived in the evening to find our acrylic middle piece cracked at every hole, with cracks spiderwebbing everywhere. It seems that we overtightened the mounting bolts. Since the piece was fine last week and hasn't been touched since, we're blaming thermal expansion/contraction for the mess. We attempted to solve the problem by drilling a stop hole at the end of each crack and then spreading epoxy over the length of the crack.

Ultimately, the acrylic probably needs to be replaced. We still haven't figured out how to order single structural parts from Makerbot Industries.



[![](/mw/images/a/aa/Extruder_fix.jpg)](file:extruder_fix.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:extruder_fix.jpg)Stepstruder foot fix

In addition, we found that one of the stepstruder's feet had been superglued into place with the wrong side facing out. It needed to be flipped end over end. The bolt holes in the left and right feet didn't have the same spacing from front to back, meaning the stepstruder would sit kitty-cornered on the Z-stage platform, one edge hanging off the front. We were able to pry the bottom-most superglued plate off the misaligned foot, but the next piece that joined the two extruder halves was tightly glued in tongue-and-groove. We used needle files to lengthen the hex hole for the 4mm nut into a slot in the acrylic, which let us use the mounting nut in the proper location without further extruder disassembly.

The Makerbot's OEM ATX power supply was defective. It refused to power on at all. We scavenged a power supply from one of the machines in the space and the motherboard and daughterboards fired right up.

Accomplished:

* FINISHED - Replaced the RJ-45 serial cable with a more bendy one to solve bend radius issue with the supplied one's boot.

* FINISHED - Stepstruder assembly.  Since we'd used lead-free tin solder on the heating resistors, we decided that was good enough, vs. finding some silver solder later.

* FINISHED - Z-stage mounting.

* FINISHED - XY-stage mounting.In Progress:

* Stepstruder electronics assembly

* Stepstruder mounting (complete?)

* Body assembly (almost complete)For next time:

* [Stepstruder electronics assembly](http://wiki.makerbot.com/stepstruder-mk6-electronics-assembly).  Initial resistance tests pass.  Calibrating the Z-axis stepper controller board potentiometers is done but should be re-checked carefully.  The only thing left, other than that, is wiring the stepstruder stuff to the extruder controller board.

* Finish body assembly, mount power supply and electronics.

* [Start testing!](http://wiki.makerbot.com/thingomatic-doc:testing-your-bot)

##3/16/2011 — All Wired Up.


We managed to complete the mechanical and electronic assembly. We had just enough time to hook the 'bot up to ReplicatorG for some motor tests, but we were met with the dreaded "Toolhead 0: not found" message. Our wiring was amiss! We left the body unattached to its base, with heavy hearts and an eye toward next week's session.

Accomplished:

* FINISHED - Stepstruder electronics assembly.

* FINISHED - Stepstruder mounting.

* FINISHED - Body assembly (minus attaching the base, pending wiring diagnostics)In Progress:

* Initial electrical testsFor next time:

* Continue 
[Testing Your Bot](http://wiki.makerbot.com/thingomatic-doc:testing-your-bot).

* Finish body assembly, mount power supply and electronics.

##3/23/2011 — Hot Wet Circuits.


We repaired some wiring, extended some wiring, and found a number of polarity or connection mistakes. For instance, the silkscreen on the ABP has the wrong polarity for the conveyor motor—we had to connect red to - and black to +, as shown in the photo in the assembly instructions.

In last week's build, we accidentally pulled a wire out of the extruder motor cooling fan. We'd attempted a repair, but it turned out to be unsuccessful. The fan is DOA. We replaced it with an old CPU cooling fan scrounged from member's otherwise useless stockpile of electronics junk.

The Z-axis stepper control board is malfunctioning. Some of the time, the Z stepper works fine. Some of the time, it only moves down (noisily). Some of the time, it doesn't move at all. In the latter case, the onboard voltage regulator gets 
 hot 
 quickly. When it's working, touching or fiddling with the wires at the control board connection causes it to fail, but only if the stepper motor is connected to the other end of the cable. It seems like a mechanical connection problem that's causing an unexpected ground. As of yet unsolved.

We cranked up the temperatures on the ABP and the extruder. After fixing the temperature sensor wiring on the ABP, everything worked well. We noticed strange condensation inside the ABP's conveyor belt when we drove the belt motor through ReplicatorG. No one, including Google, could explain it.

Accomplished:

* FINISHED - Wiring fixes.

* FINISHED - Temperatures tested.

* FINISHED - Limiting switches tested.

* FINISHED - X-axis tested.

* FINISHED - Y-axis tested.In Progress:

* Z-axis and extruder tests.For next time:

* Continue 
[Testing Your Bot](http://wiki.makerbot.com/thingomatic-doc:testing-your-bot). We need to get to the root of the Z-axis strangeness and find out why the extruder motor isn't motoring.

*

##3/30/2011 — Hot Wet Plastic.


[![](/mw/images/6/62/Makerbot_printing_cube1.jpg)](file:makerbot_printing_cube1.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:makerbot_printing_cube1.jpg)Printing Thing #0, a 20mm calibration cube

[![](/mw/images/7/78/Makerbot_printing_cube2.jpg)](file:makerbot_printing_cube2.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:makerbot_printing_cube2.jpg)Printing Thing #0, a 20mm calibration cube

[![](/mw/images/f/fa/Thing0_thing1.jpg)](file:thing0_thing1.jpg)  
[![](/mw/skins/common/images/magnify-clip.png)](file:thing0_thing1.jpg)Thing #0 and Thing #1 (still on its raft)

The nice new 500W+ modular power supply Mike had installed for us wouldn't start up. It seems it may be too smart for our 'bot. Solutions may include adding a dummy load or shorting -5V to ground as Makerbot Industries 
[has recommended](http://wiki.makerbot.com/thingomatic-doc:coolermaster-psu-fix) for some Coolermaster power supplies.

We solved the Z-axis stepper strangeness. The red wire on the stepper cable was poorly attached to the metal tab inside the plastic connector at the extruder controller board. It passed physical inspection, but a continuity test showed that minor flexing caused the electrical connection to break. We yanked the wire out of the crimp tab, soldered it to the outside of the tab, and re-crimped the strain relief. Works fine now.

The cable connecting the Z-axis limit switch needs to be several inches longer. It can't be routed behind the Z-stage because there isn't enough clearance between the back of the Z and the wall of the case. Therefore it has to be routed 
 the Z-stage when it's homed all the way to the top of its travel. Ideally, we'd tack it along the back upper corner of the case, then down along the right side, but the cable is 
 too short for that. The only way it worked was to route it between the stepper's threaded rod and the right-side smooth rod, over the top of the Z-stage, down through the acrylic panel, and over to the motherboard as directly as possible. The cable still gets pulled taut every time the Z-stage homes to the top.

We measured the maximum Z-height at 108mm per the 
[calibration instructions](http://wiki.makerbot.com/thingomatic-doc:how-to-print#toc3), then entered 107mm as a starting value in the alterations/start.gcode file in ReplicatorG's Skeinforge "SF35-Thingomatic-ABP-Stepstruder" profile. The ABP isn't level--the back edge looks to be at least 1mm higher than the front--so we'll need to level it with shims or washers. Getting the platform level and finding the correct Z-height has a huge impact on print quality.

We finally got to try a couple of test prints! Two 20mm 
[calibration cubes](http://www.thingiverse.com/thing:5573) printed pretty well for our first shot. The first was a little wavy, and the Internet said to try upping the feed rate a bit (platform speed of travel) without changing the flow rate (extrusion speed), since the extruded thread works best when it's stretched just a bit. We changed the feed rate (in ReplicatorG's "Generate GCode" window, Edit -> Craft radio button -> Speed radio button -> Feed Rate) from 28.5mm/s to 30mm/s, and the second cube did look better. Success! Excitement!

TODO:

* The ABP needs to be leveled.

* After leveling, the maximum Z-height needs to be found and marked on the 'bot. In fact, it wouldn't be a bad idea to make a plaque with a QR code directing potential users to a "best settings" page on this wiki.

* Align the Z-stage threaded rod. One post recommended moving the Z-stage all the way down off the threaded rod, then alternately tightening the Z stepper motor's mounting bolts until the threaded rod is "aimed" at the hole in the top of the Z-stage.

* Lube the rods with some dry silicone lubricant (spray on rag, wipe onto rods). 3-in-1 oil can be used, too, but it's messier.

* Even the second cube seemed to have problems at the lower layers. We may yet have gremlins in our temperature or feed rate settings. On a large, flat surface, pairs of neighboring threads would sometimes twist and raise from the raft on the first layer.

* While fiddling around with a few more prints, the 'bot occasionally just stopped mid-print (when printing from SD card or a tethered PC). The Internet says this can be a communication problem when tethered or a later communication problem due to RF interference. We need to twist our cables to reduce RFI.