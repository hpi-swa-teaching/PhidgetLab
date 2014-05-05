accessing
getIfKitSensorValue

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor ifNotNil: [ ^ sensor value ].
	^ 0