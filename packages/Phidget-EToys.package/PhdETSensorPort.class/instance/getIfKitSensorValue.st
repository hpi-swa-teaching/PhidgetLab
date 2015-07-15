accessing
getIfKitSensorValue

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor	ifNil: [ ^ 0 ].
	self loadImage: #green.
	self inverted
		ifTrue: [ ^ sensor invertedValue ]
		ifFalse: [ ^ sensor value ].
