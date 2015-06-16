pop ups
changeSound: upDown
	| ind arg st soundChoices index it current |
	"move in the list of sounds.  Adjust arg tile after me"

	ind := owner submorphs indexOf: self.
	arg := owner submorphs atWrap: ind+1.
	arg isSyntaxMorph ifFalse: [^ self].
	st := arg submorphs detect: [:mm | mm isKindOf: StringMorph] ifNone: [^ self].
	soundChoices := SoundService default sampledSoundChoices.
	current := st contents copyFrom: 2 to: st contents size-1.	"remove string quotes"
	index := soundChoices indexOf: current.
	index > 0 ifTrue:
		[st contents: (it := soundChoices atWrap: index + upDown) printString.
		self playSoundNamed: it].
