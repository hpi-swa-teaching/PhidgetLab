initialization
setLiteral: anObject
	"Set the receiver's literal to be anObject.  Create a readout morph and add it to the receiver, deleting any existing one that may be there."

	| m already |
	already := submorphs detect: [:aSubMorph  | aSubMorph isKindOf: UpdatingStringMorph] ifNone: [nil].
	already ifNotNil: [already delete].
	type := #literal.
	m := UpdatingStringMorph contents: ' ' font: ScriptingSystem fontForTiles.
	m target: self; getSelector: #literal; putSelector: #literal:.
	(anObject isString or: [ anObject isText]) ifTrue: [m useStringFormat].
	self addMorphBack: m.
	self setLiteralInitially: anObject.
