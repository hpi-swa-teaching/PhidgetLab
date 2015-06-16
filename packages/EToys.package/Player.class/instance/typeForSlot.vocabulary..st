slots-kernel
typeForSlot: aSlotName vocabulary: aVocabulary
	"Answer the data type for values of the instance variable of the given name.  Presently has no senders but retained for a while..."

	| getter inherentSelector |
	inherentSelector := aSlotName inherentSelector.
	(self slotInfo includesKey: inherentSelector) ifTrue: [^ (self slotInfoAt: inherentSelector) type].
	getter := (aSlotName beginsWith: 'get')
		ifTrue:
			[aSlotName]
		ifFalse:
			[aSlotName asGetterSelector].
	^ (aVocabulary methodInterfaceAt: getter ifAbsent: [self error: 'Unknown slot name: ', aSlotName]) resultType