viewer
elementTypeFor: aStringOrSymbol vocabulary: aVocabulary
	"Answer whether aStringOrSymbol is best characterized as a #systemSlot, #systemScript, #userSlot, or #userScript.  This is ancient and odious but too tedious to rip out at this point."

	| aSymbol anInterface aSlotName |
	aSymbol := aStringOrSymbol asSymbol.
	aSlotName := aSymbol inherentSelector.
	(self slotInfo includesKey: aSlotName) ifTrue: [^ #userSlot].
	(self class isUniClass and: [self class scripts includesKey: aSymbol]) ifTrue: [^ #userScript].
	
	anInterface := aVocabulary methodInterfaceAt: aSymbol ifAbsent: [nil].
	^ anInterface
		ifNotNil:
			[(anInterface resultType == #unknown)
				ifTrue:
					[#systemScript]
				ifFalse:
					[#systemSlot]]
		ifNil:
			[#systemScript]