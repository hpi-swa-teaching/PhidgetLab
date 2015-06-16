accessing
resultType
	"Answer the result type of the receiver"

	type == #literal 
		ifTrue: 
			[(literal isNumber) ifTrue: [^#Number].
			(literal isString) ifTrue: [^#String].
			(literal isKindOf: Boolean) ifTrue: [^#Boolean]].
	type == #expression ifTrue: [^#Number].
	type == #objRef ifTrue: [(actualObject costume renderedMorph isMemberOf: KedamaPatchMorph) ifTrue: [^ #Patch] ifFalse: [^#Player]].
	^#unknown