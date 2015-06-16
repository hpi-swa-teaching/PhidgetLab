scripts-standard
includeAtCursor: aPlayer 
	"Add aPlayer to the list of objects logically 'within' me, at my current cursor position. ."

	| aCostume |
	(aPlayer isNil or: [aPlayer == self]) ifTrue: [^self].
	(aPlayer isText or: [aPlayer isString]) 
		ifTrue: 
			[^ self costume class == TextFieldMorph 
				ifTrue: [self costume append: aPlayer]
				ifFalse: [self]].
	aCostume := self costume topRendererOrSelf.
	aPlayer costume goHome.	"assure it's in view"
	(aCostume isKindOf: PasteUpMorph) 
		ifTrue:
			[aCostume addMorph: aPlayer costume asElementNumber: self getCursor.
			aCostume invalidRect: aCostume bounds]
		ifFalse:
			[aCostume addMorphBack: aPlayer.
			self setCursor: aCostume submorphs size]