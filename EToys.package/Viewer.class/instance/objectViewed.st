e-toy support
objectViewed
	"Answer the graphical object to which the receiver's phrases apply"

	^ (scriptedPlayer isPlayerLike)
		ifTrue:
			[scriptedPlayer costume]
		ifFalse:
			[scriptedPlayer]