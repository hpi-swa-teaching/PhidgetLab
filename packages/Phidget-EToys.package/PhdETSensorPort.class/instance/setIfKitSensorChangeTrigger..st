accessing
setIfKitSensorChangeTrigger: aNumber

	| sensor |
	sensor := phidget getSensor: portNumber.
	sensor	ifNotNil: [
		sensor changeTrigger: aNumber].