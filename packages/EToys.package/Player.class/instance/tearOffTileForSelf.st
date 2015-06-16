misc
tearOffTileForSelf
	| tiles |
	self currentHand attachMorph: (tiles := self tileReferringToSelf).
	(tiles isSyntaxMorph) 
		ifTrue: 
			[Preferences tileTranslucentDrag 
				ifTrue: [tiles lookTranslucent]
				ifFalse: 
					[tiles align: tiles topLeft
						with: self currentHand position + tiles cursorBaseOffset]]