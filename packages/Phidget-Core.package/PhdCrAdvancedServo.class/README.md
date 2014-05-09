I am a representation of a Phidget called 'Advanced Servo' (here: 'Advanced Servo board') in Squeak.
Furthermore I'm a special Servo board. I additionally support acceleration and velocity for a motor.
To use the Advanced Servo board, create a new instance and open a connection to the hardware board with:
	advServo := PhdCrAdvancedServo new.
	advServo openAny.
A block can be set to be evaluated every time the hardware board was attached, detached, an error occoured, the position of a motor was changed, the velocity of a motor was changed or the current draw of a motor was changed. For example:
	servo
		on: #Attach do: [ Transcript show:'servo was attached!';cr ];
		on: #Detach do: [ Transcript show:'servo was detached!';cr ];
		on: #VelocityChange do: [ Transcript show:'A motor changed it's velocity!' ];
		on: #CurrentChange do: [ Transcript show:'The current draw for a motor has changed!' ].


Instance Variables
	motors:		<LinkedList of PhdCrCompAdvancedServoMotor's>

motors:
	- a LinkedList of PhdCrCompAdvancedServoMotor's. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrCompAdvancedServoMotor's as the Phidget has. When the Phidget is detached the list is emptied. See the PhdCrCompAdvancedServoMotor class documentation for more information.


new callbacks:
	#VelocityChange (a motor has changed its velocity),
	#CurrentChange (a motor has changed its current draw)
