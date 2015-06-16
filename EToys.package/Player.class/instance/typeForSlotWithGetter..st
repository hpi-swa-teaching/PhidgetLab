slots-kernel
typeForSlotWithGetter: aGetter
	"Answer the data type for values of the instance variable of the given name"

	| getter inherentSelector |
	(#(color:sees: seesColor: touchesA: overlaps: overlapsAny:) includes: aGetter) ifTrue: [^ #Boolean].
	(#(+ * - /) includes: aGetter) ifTrue: [^ #Player].  "weird vector stuff"
  	"Annoying special cases"

	inherentSelector := aGetter inherentSelector.
	(self slotInfo includesKey: inherentSelector) ifTrue: [^ (self slotInfoAt: inherentSelector) type].
	getter := (aGetter beginsWith: 'get')
		ifTrue:
			[aGetter]
		ifFalse:
			[aGetter asGetterSelector].
	^ (Vocabulary eToyVocabulary methodInterfaceAt: getter ifAbsent: [self error: 'Unknown slot name: ', aGetter]) resultType