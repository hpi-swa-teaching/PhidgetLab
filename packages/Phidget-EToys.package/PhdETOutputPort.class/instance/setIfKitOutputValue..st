accessing
setIfKitOutputValue: aBoolean

	| output |
	output := phidget getInput: portNumber.
	output ifNotNil: [ ^ output value: aBoolean ].
	^ false