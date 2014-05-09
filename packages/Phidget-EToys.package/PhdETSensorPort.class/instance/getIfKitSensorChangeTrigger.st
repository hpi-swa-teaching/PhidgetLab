accessing
getIfKitSensorChangeTrigger

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor	ifNil: [ ^ 0 ].
	^ sensor changeTrigger