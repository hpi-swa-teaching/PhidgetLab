accessing
getIfKitOutputValue

	| output |
	output := phidget getOutput: portNumber.
	output ifNotNil: [ ^ output value ].
	^ false