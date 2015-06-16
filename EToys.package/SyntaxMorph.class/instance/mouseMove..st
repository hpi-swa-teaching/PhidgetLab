event handling
mouseMove: evt
	
	owner isSyntaxMorph ifFalse: [^ self].

false ifTrue: ["for now, do not drag off a tile"
	self currentSelectionDo:
		[:innerMorph :mouseDownLoc :outerMorph | | dup selection |
		mouseDownLoc ifNotNil: [
			(evt cursorPoint dist: mouseDownLoc) > 4 ifTrue:
				["If drag 5 pixels, then tear off a copy of outer selection."
				selection := outerMorph ifNil: [self].
				selection deletePopup.
				evt hand attachMorph: (dup := selection duplicate).
				Preferences tileTranslucentDrag
					ifTrue: [dup lookTranslucent]
					ifFalse: [dup align: dup topLeft
								with: evt hand position + self cursorBaseOffset].
				self setSelection: nil.	"Why doesn't this deselect?"
				(self firstOwnerSuchThat: [:m | m isSyntaxMorph and: [m isBlockNode]])
					ifNotNil: [:m | "Activate enclosing block."
								m startStepping]]]].
	].