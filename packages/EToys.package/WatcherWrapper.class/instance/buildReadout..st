initialization
buildReadout: aGetter 
	| triplet type wording setter vocab readout |
	triplet := self readoutInformation: aGetter.
	type := triplet first.
	wording := triplet second.
	setter := triplet third.
	vocab := Vocabulary vocabularyForType: type.
	readout := vocab
				updatingTileForTarget: player
				partName: wording
				getter: aGetter
				setter: setter.
	readout
		setNameTo: ('{1}''s {2}' translated format: {player externalName. wording}).
	readout
		minHeight: (vocab wantsArrowsOnTiles
				ifTrue: [22]
				ifFalse: [14]).
	^ readout