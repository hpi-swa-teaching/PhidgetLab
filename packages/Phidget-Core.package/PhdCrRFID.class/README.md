I am a representation of a Phidget called 'Phidget RFID' in Squeak.
To use the RFID Phidget, create a new instance and open a connection to the hardware board with:
	rfid := PhdCrRFID new.
	rfid openAny.
A block can be set to be evaluated every time the hardware board was attached, detached, an error occoured, an output value was changed, a tag was found by the RFID reader, or if the tag was lost. For example:
	rfid
		on: #Attach do: [ Transcript show:'rfid was attached!';cr ];
		on: #Detach do: [ Transcript show:'rfid was detached!';cr ];
		on: #TagFound do: [ Transcript show:'rfid found a tag';cr ].


Instance Variables
	rfid:			<PhdCrCompRFID>
	outputs:		<LinkedList of PhdCrCompDigitalOutput's>
	led:			<PhdCrCompSimpleLED>

rfid:
	- a PhdCrCompRFID needed to get tag information of the RFID Phidget. See the PhdCrCompRFID class documentation for more information.

outputs:
	- a LinkedList. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrCompDigitalOutput's as the Phidget has. When the Phidget is detached the list is emptied. See the PhdCrCompDigitalOutput class documentation for more information.

led:
	- a PhdCrCompSimpleLED that is on-board on this type of Phidget. See the PhdCrCompSimpleLED class documentation for more information.


new callbacks:
	#TagFound (a tag was found by the rfid sensor),
	#TagLost (a tag was found by the rfid sensor),
	#OutputChange (an output has changed its value)


example indicating if a tag was found using the on-board LED
	rfid := PhdCrRFID new.
	rfid
		on: #Attach do: [ rfid rfidSensor setAntennaState: true ];
		on: #TagFound do: [ rfid led setState: true ];
		on: #TagLost do: [ rfid led setState: false ];
		openAny.
	"Now attach a RFID Phidget, hold a tag near the Phidget and then take it away."
	rfid close.