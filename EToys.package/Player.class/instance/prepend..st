scripts-standard
prepend: aPlayer 
	"Add aPlayer to the list of objects logically 'within' me.  This is visually represented by its morph becoming my costume's first submorph.   Also allow text to be prepended."

	| aCostume |
	(aPlayer isNil or: [aPlayer == self]) ifTrue: [^self].
	(aPlayer isText or: [aPlayer isString]) 
		ifTrue: 
			[^ self costume class == TextFieldMorph 
				ifTrue: [self costume prepend: aPlayer]
				ifFalse: [self]].
	(aCostume := self costume topRendererOrSelf) 
		addMorphFront: aPlayer costume.
	aPlayer costume goHome.	"assure it's in view"
	(aCostume isKindOf: PasteUpMorph) 
		ifTrue: [self setCursor: (aCostume submorphs indexOf: aPlayer costume)]