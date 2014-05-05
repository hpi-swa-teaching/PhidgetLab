A PhdCrCustomCharPicker is a morph which lets the user visualy create a custom character for the phidget LCD.

Instance Variables
	lowerPixel:		Array
	lowerValue:		Array
	upperPixel:		Number
	upperValue:		Number
	okButton:			SimpleButtonMorph
	cancelButton:	SimpleButtonMorph
	allButton:			SimpleButtonMorph
	nothingButton:	SimpleButtonMorph

lowerPixel
	- array of morphs representing the pixel of the lower half of the custom character

lowerValue
	- numerical value indicating the state of the pixel of the lower half of the custom character
	- needed by the phidget21 library

upperPixel
	- array of morphs representing the pixel of the upper half of the custom character

upperValue
	- numerical value indicating the state of the pixel of the upper half of the custom character
	- needed by the phidget21 library
	
okButton
	- button to accept the choosen custom character
	- triggers the #characterPicked event
	
cancelButton
	- button to discard the choosen custom character
	
allButton
	- button to select all pixel
	
nothing
	- button to deselect all pixel
