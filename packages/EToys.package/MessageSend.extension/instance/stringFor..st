*Etoys-tiles
stringFor: anObject
	"Return a string suitable for compiling.  Literal or reference from global ref dictionary.  self is always named via the ref dictionary."

	| generic aName |
	anObject isLiteral ifTrue: [^ anObject printString].
	anObject class == Color ifTrue: [^ anObject printString].
	anObject class superclass == Boolean ifTrue: [^ anObject printString].
	anObject isBlock ifTrue: [^ '[''do nothing'']'].	"default block"
		"Real blocks need to construct tiles in a different way"
	anObject class isMeta ifTrue: ["a class" ^ anObject name].
	generic := anObject knownName.	"may be nil or 'Ellipse' "
	aName := anObject uniqueNameForReference.
	generic ifNil:
		[(anObject respondsTo: #renameTo:) 
			ifTrue: [anObject renameTo: aName]
			ifFalse: [aName := anObject storeString]].	"for Fraction, LargeInt, etc"
	^ aName
