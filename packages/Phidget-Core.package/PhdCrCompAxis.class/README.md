I am a special Phidget Component for axes.

I can be asked for the current acceleration of an axis of me, which can be retrieved and set (getter/setter exist). This acceleration should be between my minimal and maximal position which can also be retrieved. Be careful that if those values cannot be retrieved (for instance if the Phidget is not attached) they return a value of 0.0, although this may also be a valid value.

My Phidget can call a user defined callback block when my acceleration changes, when prior
	axis on: #AccelerationChange do: [ "user defined content" ]
was called. Note: This block will only be evaluated if the change of the value is equal or bigger than my changeTrigger.
My changeTrigger is a value between 0 and 1 (getter/setter exist).
By default it is set to 0.05, so that there will be no acceleration when I am not in move.

Currently I only belong to PhdCrAccelerometer.