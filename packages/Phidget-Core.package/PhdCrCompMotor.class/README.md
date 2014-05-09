I am a special Phidget Component for motor controls.

I have a current acceleration, which can be retrieved and set (getter/setter exist). This acceleration should be between my minimal and maximal acceleration which can also be retrieved. Be careful that if those values cannot be retrieved (for instance if the Phidget is not attached) they return a value of 0.0, although this may also be a valid value.
In addition I have a current velocity, which can be retrieved and set (getter/setter exist). This velocity should be between -100.0 to 100.0. Setting other values will have no effect but returning false.
I also can be asked for my current current draw.

My Phidget can call a user defined callback block when my motor velocity changes, when prior
	motorControl on: #VelocityChange do: [ "user defined content" ]
was called.
It also can call a user defined callback block when the current draw of my motor changes, when prior
	motorControl on: #CurrentChange do: [ "user defined content" ]
was called.

Currently I only belong to PhdCrMotorControl.