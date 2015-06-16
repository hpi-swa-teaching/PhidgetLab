*Etoys-tiles
showTiles: aBoolean
	"Set the showingTiles as indicated.  The fact that there are initially no senders of this reflects that fact that initially this trait is only directly settable through the UI; later there may be senders, such as if one wanted to set a system up so that all newly-opened browsers showed tiles rather than text."

	aBoolean
		ifTrue:
			[contentsSymbol := #tiles]
		ifFalse:
			[contentsSymbol == #tiles ifTrue: [contentsSymbol := #source]].
	self setContentsToForceRefetch.
	self changed: #contents