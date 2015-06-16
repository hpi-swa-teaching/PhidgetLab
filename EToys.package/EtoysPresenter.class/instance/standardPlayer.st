standardPlayer etc
standardPlayer
	standardPlayer ifNil:
		[self createStandardPlayer].
	standardPlayer costume isInWorld ifFalse: [associatedMorph addMorphNearBack: standardPlayer costume].
	^ standardPlayer