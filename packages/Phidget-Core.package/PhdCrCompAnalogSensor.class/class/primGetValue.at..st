primitives
primGetValue: phidgetIdArray at: index
	"Gets the sensor value (0-1000) at the analog input with the given index."

	<primitive: 'primGetAnalogSensorValue' module: 'PhidgetPlugin'>
	^ 0