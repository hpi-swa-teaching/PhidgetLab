I am a representation of a Phidget called 'Joystick Sensor'.
You can drag me out of the AdvancedInterface-Kit.

The hardware component returns two values, one for the right connector (x) and one for the left connector (y).

Instance Variables
	masterValue:		<Float>
	slave:		<PhdETAssistentSensorPort>
	slaveValue:		<Float>

masterValue
	- the value returned by the left connector

slave
	- reference to a submorph, which handles the second value returned from the hardware.

slaveValue
	- the value returned by the right connector 
