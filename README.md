# Cinema Lab
## Home theater control based on a raspberry pi.

#Intro

Cinema lab is a home theater controller designed for the raspberry pi. Featuring a web interface and many customizable functions this software will allow you to have full control
over your home theater installation.

The original implementation for this software is controlled by a BSS Blu-100 DSP Unit. With the primary function of turning amplifiers on and off when a button on the BSS controller is pressed
 also allowing for the control of Philips hue lighting via a button on the controller.
####Basics:

Some of the basic functionality is as follows

* Hue Lighting control
* Power sequencing for amplifiers or other A/V equipment
* BSS DSP System control
* Control from DSP (or other gpio capable devices)
* Web status and control page

Other features possibly to be added on later.

####Requirements:

Your raspberry pi must have ruby installed at the latest version, in order to install all gems run bundle install and that should be all.

You must also have some kind of device capable of GPIO Outputs at a minimum. Remember all this software is really for is to take in a gpio signal and make a change in your theater system. However
all of this can be done via a web interface if you so choose.


#TO DO:
- [ ] Web interface
- [ ] Philips hue integration
- [ ] Power sequencing system
- [ ] Take GPIO signals and make them do a thing.

##Notes:
Currently this is being programmed without access to a raspberry pi, so all of the GPIO feature will need to be tested before final implementation
