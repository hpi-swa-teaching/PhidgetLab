slots-kernel
typeForSlot: aSlotName
	"Answer the data type for values of the instance variable of the given name"

	| getter |
	(self slotInfo includesKey: aSlotName) ifTrue: [^ (self slotInfoAt: aSlotName) type].
	getter := (aSlotName beginsWith: 'get')
		ifTrue:
			[aSlotName]
		ifFalse:
			[aSlotName asGetterSelector].
	^ (self currentVocabulary methodInterfaceAt: getter ifAbsent: [self error: 'Unknown slot name: ', aSlotName]) resultType