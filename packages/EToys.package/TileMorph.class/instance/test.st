private
test
	| pos |
	"Set the position of all my submorphs.  Compute my bounds.  Caller must call layoutChanged or set fullBounds to nil."

	fullBounds ifNil: [
		pos := self topLeft.
		self submorphsDo: [:sub | | hh | 
			hh := (self class defaultH - sub height) // 2.	"center in Y"
			sub privateBounds: (pos + (2@hh) extent: sub extent).
			pos x: (sub right min: 1200)].	"2 pixels spacing on left"
		bounds := bounds topLeft corner: pos + (2 @ self class defaultH).
		fullBounds := bounds.
		].
	owner class == TilePadMorph ifTrue: [owner bounds: bounds].
	^ fullBounds