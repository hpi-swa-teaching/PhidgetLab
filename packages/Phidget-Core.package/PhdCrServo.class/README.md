I am a representation of a Phidget called 'Servo' (here: 'Servo board') in Squeak.
To use the Servo board, create a new instance and open a connection to the hardware board with:
	servo := PhdCrServo new.
	servo openAny.
A block can be set to be evaluated every time the hardware board was attached, detached, an error occoured or the position of a motor was changed. For example:
	servo
		on: #Attach do: [ Transcript show:'servo was attached!';cr ];
		on: #Detach do: [ Transcript show:'servo was detached!';cr ];
		on: #PositionChange do: [ Transcript show:'A motor changed it's position!' ].


Instance Variables
	motors:		<LinkedList of PhdCrCompServoMotor's>

motors:
	- a LinkedList of PhdCrCompServoMotor's. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrCompServoMotor's as the Phidget has. When the Phidget is detached the list is emptied. See the PhdCrCompServoMotor class documentation for more information.


new callbacks:
	#PositionChange (a motor has changed its position)
