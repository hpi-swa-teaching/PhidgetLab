scripts-kernel
acceptableScriptNameFrom: originalString forScriptCurrentlyNamed: currentName
	"Produce an acceptable script name, derived from the current name, for the receiver.  This method will always return a valid script name that will be suitable for use in the given situation, though you might not like its beauty sometimes."

	| aString stemAndSuffix proscribed stem suffix withoutColon currentNumArgs withColon |
	withoutColon := originalString copyWithoutAll: {$:. $ }.
	(currentName notNil and: [(currentName copyWithout: $:) = withoutColon])
		ifTrue:
			[^ currentName].  "viz. no change; otherwise, the #respondsTo: check gets in the way"

	currentNumArgs := currentName ifNil: [0] ifNotNil: [currentName numArgs].
	aString := withoutColon asIdentifier: false.  "get an identifier starting with a lowercase letter"
	stemAndSuffix := aString stemAndNumericSuffix.
	proscribed := #(self super thisContext costume costumes dependents #true #false size).

	stem := stemAndSuffix first.
	suffix := stemAndSuffix last.
	withoutColon := aString asSymbol.
	withColon := (withoutColon, ':') asSymbol.

	[(proscribed includes: withoutColon)
		or: [(self respondsTo: withoutColon)
		or: [(self respondsTo: withColon)
		or:	[(Smalltalk includesKey: withoutColon)
		or: [(Smalltalk includesKey: withColon)]]]]]
	whileTrue:
		[suffix := suffix + 1.
		withoutColon := (stem, suffix printString) asSymbol.
		withColon := (withoutColon, ':') asSymbol].

	^ currentNumArgs = 0
		ifTrue:
			[withoutColon]
		ifFalse:
			[withColon]