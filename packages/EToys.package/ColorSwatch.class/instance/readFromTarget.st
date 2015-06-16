target access
readFromTarget
	"Obtain a value from the target and set it into my lastValue"

	| v |
	(target isNil or: [getSelector isNil]) ifTrue: [^contents].
	v := target perform: getSelector with: argument.
	lastValue := v.
	^v