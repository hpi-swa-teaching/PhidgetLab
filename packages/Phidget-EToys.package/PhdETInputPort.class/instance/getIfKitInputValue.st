accessing
getIfKitInputValue

	| input |
	input := phidget getInput: portNumber.
	input ifNotNil: [ ^ input value ].
	^ false