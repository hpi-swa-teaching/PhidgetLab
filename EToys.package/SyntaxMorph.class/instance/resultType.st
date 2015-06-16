type checking
resultType
	"Look up my result type.  If I am a constant, use that class.  If I am a message, look up the selector."

	| list value soundChoices |
	parseNode class == BlockNode ifTrue: [^#blockContext].
	parseNode class == AssignmentNode ifTrue: [^#command].
	parseNode class == ReturnNode ifTrue: [^#command].	"Need more restriction than this"
	list := submorphs 
				select: [:ss | ss isSyntaxMorph and: [ss parseNode notNil]].
	list size > 1 ifTrue: [^self resultTypeFor: self selector].
	list size = 1 
		ifTrue: 
			["test for levels that are just for spacing in layout"

			(list first isSyntaxMorph and: [list first nodeClassIs: MessageNode]) 
				ifTrue: [^list first resultType]].	"go down one level"
	value := self try.
	value class == Error ifTrue: [^#unknown].
	(value isNumber) ifTrue: [^#Number].
	(value isKindOf: Boolean) ifTrue: [^#Boolean].
	(value isForm) ifTrue: [^#Graphic].
	(value isPlayerLike and: [value costume renderedMorph isMemberOf: KedamaPatchMorph]) ifTrue: [^#Patch].
	value isString
		ifTrue: 
			[soundChoices := #('silence').	"default, if no SampledSound class"
			Smalltalk at: #SampledSound
				ifPresent: [:sampledSound | soundChoices := sampledSound soundNames].
			(soundChoices includes: value) ifTrue: [^#Sound]].
	(value isPlayerLike) ifTrue: [^#Player].
	^value class name asLowercase	"asSymbol (not needed)"