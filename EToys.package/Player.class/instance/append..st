scripts-standard
append: aPlayer 
	"Add aPlayer to the list of objects logically 'within' me.  This is visually represented by its morph becoming my costume's last submorph.   Also allow text to be appended."

	| aCostume |
	(aPlayer isNil or: [aPlayer == self]) ifTrue: [^self].
	(aPlayer isText or: [aPlayer isString]) 
		ifTrue: 
			[self costume class == TextFieldMorph 
				ifTrue: [^self costume append: aPlayer]
				ifFalse: [^self]].
	(aCostume := self costume topRendererOrSelf) 
		addMorphNearBack: aPlayer costume.
	aPlayer costume goHome.	"assure it's in view"
	(aCostume isKindOf: PasteUpMorph) 
		ifTrue: [self setCursor: (aCostume submorphs indexOf: aPlayer costume)]