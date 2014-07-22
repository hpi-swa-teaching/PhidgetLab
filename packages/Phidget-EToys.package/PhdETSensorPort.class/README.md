I am an abstract representation of all Phidgets which could work as sensor ports (for example a touch sensor). You can drag my subclasses out of the AdvancedInterfaceKit.

Instance Variables
	inverted:		<Integer>
	lastValue:		<Integer>
	lastValueTime:		<Time>
	speed:		<Float>

inverted
	- The value of the sensor inverted.

lastValue
	- The last value the hardware device sent.

lastValueTime
	- The time when lastValue was sent.

speed
	- The speed with which the value has changed compared to the last value.
