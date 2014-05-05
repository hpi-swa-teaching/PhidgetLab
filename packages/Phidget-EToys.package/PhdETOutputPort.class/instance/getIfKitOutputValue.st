accessing
getIfKitOutputValue

	| output |
	output := phidget getInput: portNumber.
	output ifNotNil: [ ^ output value ].
	^ false