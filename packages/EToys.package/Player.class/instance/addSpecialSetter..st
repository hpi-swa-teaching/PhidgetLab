slots-user
addSpecialSetter: selector
	| instVar code |
	"For the special setters, fooIncreaseBy:, fooDecreaseBy:, fooMultiplyBy:, add a method that does them."

 	self assureUniClass.
	instVar := (selector allButLast: 11) asLowercase.  "all three are 11 long!"
	(self respondsTo: ('set', instVar capitalized, ':') asSymbol) ifFalse: [^ false].
	code := String streamContents: [:strm |
		strm nextPutAll: selector, ' amount'; crtab.
		strm nextPutAll: 'self set', instVar capitalized, ': (self get', instVar capitalized; space.
		(selector endsWith: 'IncreaseBy:') ifTrue: [strm nextPut: $+].
		(selector endsWith: 'DecreaseBy:') ifTrue: [strm nextPut: $-].
		(selector endsWith: 'MultiplyBy:') ifTrue: [strm nextPut: $*].
		strm nextPutAll: ' amount)'].

	self class compileSilently: code classified: 'access' notifying: nil.
	^ true
