event handling
mouseEnter: evt
	| hand tile |

	self flag: #bob.		"needed renderedMorph due to transformations"
	hand := evt hand.
	hand submorphs size = 1 ifFalse: [^self].
	tile := hand firstSubmorph renderedMorph.
	(self wantsDroppedMorph: tile event: evt) ifFalse: [^self].
	handWithTile := hand.
	self startSteppingSelector: #trackDropZones.