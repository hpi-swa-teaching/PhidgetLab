accessing
getIfKitSensorInverted

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor ifNotNil: [ ^ sensor inverted ].
	^ false