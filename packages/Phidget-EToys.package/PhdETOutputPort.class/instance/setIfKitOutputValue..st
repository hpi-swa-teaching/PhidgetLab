accessing
setIfKitOutputValue: aBoolean

	| output |
	output := phidget getOutput: portNumber.
	output ifNotNil: [ ^ output value: aBoolean ].
	^ false