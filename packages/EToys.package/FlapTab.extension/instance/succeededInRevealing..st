*Etoys-support
succeededInRevealing: aPlayer
	"Try to reveal aPlayer, and answer whether we succeeded"

	(super succeededInRevealing: aPlayer) ifTrue: [^ true].
	self flapShowing ifTrue: [^ false].
	(referent succeededInRevealing: aPlayer)
		ifTrue:
			[self showFlap.
			aPlayer costume goHome; addHalo.
			^ true].
	^ false