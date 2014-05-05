accessing
setIfKitSensorInverted: aBoolean

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor ifNotNil: [ ^ sensor inverted: aBoolean ].
	^ false