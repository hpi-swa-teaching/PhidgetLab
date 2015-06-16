slots-user
tearOffWatcherFor: aSlotGetter
	"Tear off a simple textual watcher for the slot whose getter is provided"

	| aWatcher anInterface info isNumeric |

	info := self slotInfoForGetter: aSlotGetter.
	info
		ifNotNil:
			[isNumeric := info type == #Number]
		ifNil:
			[anInterface := Vocabulary eToyVocabulary methodInterfaceAt: aSlotGetter ifAbsent: [nil].
			isNumeric := anInterface notNil and: [anInterface resultType == #Number]].
	aWatcher := UpdatingStringMorph new.
	
	aWatcher
		growable: true;
		getSelector: aSlotGetter;
		putSelector: (info notNil
			ifTrue:
				[ScriptingSystem setterSelectorForGetter: aSlotGetter]
			ifFalse:
				[anInterface companionSetterSelector]);
		setNameTo: (info notNil
			ifTrue:
				[aSlotGetter inherentSelector]
			ifFalse:
				[anInterface wording]);
 		target: self.
	isNumeric
		ifFalse:
			[aWatcher useStringFormat]
		ifTrue:
			[self setFloatPrecisionFor: aWatcher].
	aWatcher
		step;
		fitContents;
		openInHand