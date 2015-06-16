dropping/grabbing
justDroppedInto: aMorph event: anEvent
	"This message is sent to a dropped morph after it has been dropped on -- and been accepted by -- a drop-sensitive morph"

	super justDroppedInto: aMorph event: anEvent.
	aMorph isPlayfieldLike
		ifTrue:
			[self vResizing: #shrinkWrap]
		ifFalse:
			[aMorph isTileScriptingElement ifTrue:
				[self vResizing: #spaceFill]]
