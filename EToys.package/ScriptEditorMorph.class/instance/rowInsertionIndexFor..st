private
rowInsertionIndexFor: aPoint
	"Return the row into which the given morph should be inserted."

	| m |
	firstTileRow to: submorphs size do: [:i |
		m := submorphs at: i.
		((m top <= aPoint y) and: [m bottom >= aPoint y]) ifTrue:
			[(aPoint y > m center y)
				ifTrue: [^ i]
				ifFalse: [^ (i - 1) max: firstTileRow]]].
	^ firstTileRow > submorphs size
		ifTrue:
			[submorphs size]
		ifFalse:
			[(submorphs at: firstTileRow) top > aPoint y 
				ifTrue: [firstTileRow - 1]
				ifFalse: [submorphs size]]
