I am a special Phidget Component for digital input values.

I can be asked for a value I am currently reading, either true or false (getter exists). True means there is a current I can read, false there is not.

My Phidget can call a user defined callback block when my value changes, when prior
	digitalInput on: #InputChange do: [ "user defined content" ]
was called.

Currently I belong to 
	- PhdCrInterfaceKit
	- PhdCrMotorControl.