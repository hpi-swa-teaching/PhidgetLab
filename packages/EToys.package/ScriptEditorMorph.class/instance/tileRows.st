other
tileRows
	"If using classic tiles, return a collection of arrays of Tiles in which each array is one line of tiles.  (John Maloney's original design and code)."

	| rows r |
	rows := OrderedCollection new.
	Preferences universalTiles ifTrue: [^ rows].
	firstTileRow to: submorphs size do: [:i |
		r := submorphs at: i.
		r submorphCount > 0 ifTrue: [rows addLast: r submorphs]].
	^ rows
