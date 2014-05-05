I am a representation of a Phidget called 'Motor Control' in Squeak.
To use a Motor Control, create a new instance and open a connection to the hardware board with:
	motorControl := PhdCrMotorControl new.
	motorControl openAny.
Send me a block to be evaluated every time the hardware board was attached, detached, an error occoured, the velocity of a motor was changed, the current of a motor was changed or an input value was changed.
For example:
	motorControl
		on: #Attach do: [ Transcript show:'motorControl was attached!';cr ];
		on: #Detach do: [ Transcript show:'motorControl was detached!';cr ];
		on: #VelocityChange do: [ Transcript show:'A motor changed it's velocity!' ];
		on: #CurrentChange do: [ Transcript show:'The current draw for a motor has changed!' ].


Instance Variables
	motors:		<LinkedList of PhdCrCompMotor's>
	inputs:		<LinkedList of PhdCrCompDigitalInput's>

motors / inputs: (each)
	- a LinkedList. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrComponent's as the Phidget has. When the Phidget is detached the list is emptied. See the instance's class documentation for more information.


new callbacks:
	#VelocityChange (a motor has changed its velocity),
	#CurrentChange (a motor has changed its current draw),
	#InputChange (an input has changed its value)