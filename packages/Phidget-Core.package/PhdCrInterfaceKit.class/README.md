I am a representation of a Phidget called 'Interface Kit' in Squeak.
To use a Interface Kit, create a new instance and open a connection to the hardware board with:
	ifKit := PhdCrInterfaceKit new.
	ifKit openAny.
Send me a block to be evaluated every time the hardware board was attached, detached, an error occoured, a sensor value was changed, an input value was changed or an output value was changed. For example:
	ifKit
		on: #Attach do: [ Transcript show:'ifKit was attached!';cr ];
		on: #Detach do: [ Transcript show:'ifKit was detached!';cr ];
		on: #SensorChange do: [ Transcript show:'A sensor changed it's value!' ].


Instance Variables
	sensors:		<LinkedList of PhdCrCompAnalogSensor's>
	inputs:		<LinkedList of PhdCrCompDigitalInput's>
	outputs:		<LinkedList of PhdCrCompDigitalOutput's>

sensors / inputs / outputs: (each)
	- a LinkedList. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrComponent's as the Phidget has. When the Phidget is detached the list is emptied. See the instance's class documentation for more information.


new callbacks:
	#SensorChange (a sensor has changed its value),
	#InputChange (an input has changed its value),
	#OutputChange (an output has changed its value)
