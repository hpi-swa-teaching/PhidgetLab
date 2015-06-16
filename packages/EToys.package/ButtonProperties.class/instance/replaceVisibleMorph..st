events
replaceVisibleMorph: aNewMorph

	| old oldOwner oldText |

	old := visibleMorph.
	oldText := self currentTextInButton.
	self visibleMorph: nil.
	old buttonProperties: nil.
	aNewMorph buttonProperties: self.
	self visibleMorph: aNewMorph.
	self addTextToButton: oldText.
	oldOwner := old owner ifNil: [^self].
	oldOwner replaceSubmorph: old by: aNewMorph.