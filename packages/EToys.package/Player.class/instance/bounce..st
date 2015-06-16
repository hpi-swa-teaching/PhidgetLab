scripts-standard
bounce: soundName 
	"If the receiver's current bounds obtrude beyond the bounds of its container, then 'bounce' it back within the container, and make the indicated sound while doing so"

	| box bounced aCostume |
	(aCostume := self costume) ifNil: [^self].
	(aCostume owner isNil or: [aCostume owner isHandMorph]) ifTrue: [^self].
	box := aCostume owner bounds.
	bounced := false.
	aCostume left < box left 
		ifTrue: 
			[self headRight.
			bounced := true].
	aCostume right > box right 
		ifTrue: 
			[self headLeft.
			bounced := true].
	aCostume top < box top 
		ifTrue: 
			[self headDown.
			bounced := true].
	aCostume bottom > box bottom 
		ifTrue: 
			[self headUp.
			bounced := true].
	bounced ifTrue: [^self makeBounceSound: soundName]