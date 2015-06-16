slots-user
unlabeledWatcherFor: aGetter
	"Answer an unnlabeled readout for viewing a numeric-valued slot of mine"

	| aWatcher info anInterface watcherWording itsType vocab aSetter |
	info := self slotInfoForGetter: aGetter.
	info ifNotNil:
			[itsType := info type.
			watcherWording := aGetter inherentSelector.
			aSetter := watcherWording asSetterSelector]
		ifNil:
			[anInterface :=Vocabulary eToyVocabulary methodInterfaceAt: aGetter ifAbsent: [nil].
			anInterface
				ifNotNil:
					[itsType := anInterface resultType.
					aSetter := anInterface companionSetterSelector]
				ifNil:
					[itsType := #Unknown.
					aSetter := nil].
			watcherWording := anInterface ifNotNil: [anInterface wording] ifNil: ['*']].
	vocab := Vocabulary vocabularyForType: itsType.
	aWatcher := vocab updatingTileForTarget: self partName: watcherWording getter: aGetter setter: aSetter.

	aWatcher setNameTo: (self externalName, '''s ', watcherWording).
	aWatcher minHeight: (vocab wantsArrowsOnTiles ifTrue: [22] ifFalse: [14]).
	^ aWatcher