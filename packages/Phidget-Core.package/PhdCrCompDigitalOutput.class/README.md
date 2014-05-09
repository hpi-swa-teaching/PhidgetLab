I am a special Phidget Component for digital output values.

I can be asked for or set a value I am currently having, either true or false (getter/setter exist). True means there is a current at this output, false that there is not.

My Phidget can call a user defined callback block when my value changes, when prior
	digitalOutput on: #OutputChange do: [ "user defined content" ]
was called.

Currently I can belong to
	- PhdCrInterfaceKit
	- PhdCrRFID