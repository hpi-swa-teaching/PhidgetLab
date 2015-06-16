search
doSearchFrom:  aSource interactive: isInteractive
	"Perform the search operation.  If interactive is true, this actually happened because a search button was pressed; if false, it was triggered some other way for which an informer would be inappropriate."

	| searchFor aVocab aList all useTranslations scriptNames addedMorphs |
	searchString := (aSource isKindOf: PluggableTextMorph)
		ifFalse:
			[aSource]
		ifTrue:
			[aSource text string].
	searchFor := searchString asString asLowercase withBlanksTrimmed.

	aVocab := self outerViewer currentVocabulary.
	(useTranslations := (scriptedPlayer isPlayerLike) and: [aVocab isEToyVocabulary])
		ifTrue:
			[all := scriptedPlayer costume selectorsForViewer.
			all addAll: (scriptNames := scriptedPlayer class namedTileScriptSelectors)]
		ifFalse:
			[all := scriptNames := scriptedPlayer class allSelectors].
	aList := all select:
		[:aSelector | | anInterface |
		(aVocab includesSelector: aSelector forInstance: scriptedPlayer ofClass: scriptedPlayer class limitClass: ProtoObject) and:
			[(useTranslations and: [(anInterface := aVocab methodInterfaceAt: aSelector ifAbsent: [nil]) notNil and: [anInterface wording includesSubstring: searchFor caseSensitive: false]])
				or:
					[((scriptNames includes: aSelector) or: [useTranslations not]) and:
						[aSelector includesSubstring: searchFor caseSensitive: false]]]].
	aList := aList asSortedArray.

	self removeAllButFirstSubmorph. "that being the header"
	self addAllMorphs:
		((addedMorphs := scriptedPlayer tilePhrasesForSelectorList: aList inViewer: self)).
	self enforceTileColorPolicy.
	self secreteCategorySymbol.
	self world ifNotNil: [self world startSteppingSubmorphsOf: self].
	self adjustColorsAndBordersWithin.

	owner ifNotNil: [owner isStandardViewer ifTrue: [owner fitFlap].

	(isInteractive and: [addedMorphs isEmpty]) ifTrue:
		[self inform: ('No matches found for "' translated), searchFor, '"']]