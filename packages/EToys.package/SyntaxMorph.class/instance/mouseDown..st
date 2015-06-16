event handling
mouseDown: evt 
	| dup rootTile |
	evt yellowButtonPressed ifTrue: [^ self showMenu: evt].
	(rootTile := self rootTile) isMethodNode ifTrue:
		[self currentSelectionDo:
			[:innerMorph :mouseDownLoc :outerMorph |
			(outerMorph notNil and: [self == innerMorph])
				ifTrue: ["Click on prior selection -- record click point."
						self setSelection: {self. evt cursorPoint. outerMorph}]
				ifFalse: ["A new selection sequence."
						self setSelection: {self. evt cursorPoint. nil}]].
		^ self].

	"Out in the world -- treat as a unit"
	rootTile isSticky ifTrue: [^ self].	"later may allow to be selected"
	rootTile isPartsDonor 
		ifTrue: [dup := rootTile duplicate.
				dup setProperty: #beScript toValue: true]
		ifFalse: [dup := rootTile].
	evt hand attachMorph: dup.
	Preferences tileTranslucentDrag
		ifTrue: [^ dup lookTranslucent]
		ifFalse: [^ dup align: dup topLeft with: evt hand position + self cursorBaseOffset]
