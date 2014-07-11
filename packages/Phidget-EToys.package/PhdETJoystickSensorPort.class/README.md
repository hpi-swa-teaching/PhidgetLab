I am a representation of a Phidget called 'Joystick'.
You can drag me out of the AdvancedInterface-Kit.

The hardware component returns two values, one for the right connector and one for the left connector.

Instance Variables
	masterValue:		<Object>
	slave:		<PhdETAssistentSensorPort>
	slaveValue:		<Object>

masterValue
	- the value returned by the left connector

slave
	- reference to a submorph, which handle the second value returned from the hardware.

slaveValue
	- the value returned by the right connector 
