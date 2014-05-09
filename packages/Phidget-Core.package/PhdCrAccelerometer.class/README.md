I am a representation of a Phidget called 'Accelerometer' in Squeak.
To use a Accelerometer, create a new instance and open a connection to the hardware board with:
	accel := PhdCrInterfaceKit new.
	accel openAny.
Send me a block to be evaluated every time the hardware board was attached, detached, an error or acceleration occoured.
For example:
	accel
		on: #Attach do: [ Transcript show:'accel was attached!';cr ];
		on: #Detach do: [ Transcript show:'accel was detached!';cr];
		on: #AccelerationChange do: [ Transcript show:'A axis changed it's value!' ].


Instance Variables
	axes:		<LinkedList of PhdCrCompDigitalOutput's>

axes:
	- a LinkedList. This list is empty if no Phidget is attached. When a Phidget is attached this list is automatically filled with as many PhdCrComponent's as the Phidget has. When the Phidget is detached the list is emptied. See the instance's class documentation for more information.


new callbacks:
	#AccelerationChange (an axis has occured an acceleration)