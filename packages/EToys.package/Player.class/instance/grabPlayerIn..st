misc
grabPlayerIn: aWorld
	"Invoked from a Viewer: rip my morph out of its container, wherever that may be, and place it in the hand, being careful to set things up so that if the subsequent drop is rejected, the morph will end up in a visible location on the screen"

	| aMorph newPosition |
	self costume == aWorld ifTrue: [^ self].
	ActiveHand releaseMouseFocus.
	(aMorph := self costume) visible: true.
	newPosition := ActiveHand position - (aMorph extent // 2).
	aMorph isInWorld
		ifTrue:
			[aMorph goHome.
			aMorph formerPosition: aMorph positionInWorld]
		ifFalse:
			[aMorph formerPosition: aWorld center].
	aMorph formerOwner: ActiveWorld.
	aMorph position: newPosition.

	ActiveHand targetOffset: aMorph position - ActiveHand position.
	ActiveHand addMorphBack: aMorph.