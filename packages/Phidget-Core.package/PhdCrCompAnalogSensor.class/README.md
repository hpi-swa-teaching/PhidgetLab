I am a special Phidget Component for analog sensor values.

I can be asked for a value I am currently reading, from 0 to 1000 (getter exists).

My Phidget can call a user defined callback block when my value changes, when prior
	analogSensor on: #SensorChange do: [ "user defined content" ]
was called. Note: This block will only be evaluated if the change of the value is equal or bigger than my changeTrigger.
My changeTrigger is a value between 0 and 100. (getter/setter exist).

Currently I only belong to PhdCrInterfaceKit.