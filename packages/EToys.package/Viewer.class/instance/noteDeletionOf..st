transition
noteDeletionOf: aMorph
	| pal |
	aMorph player == scriptedPlayer ifTrue:
		[(pal := self standardPalette)
			ifNotNil: [pal showNoPalette]
			ifNil:	[self delete]]   "Viewer on a discarded player"