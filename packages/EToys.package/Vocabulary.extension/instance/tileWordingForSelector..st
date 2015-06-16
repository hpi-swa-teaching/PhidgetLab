*Etoys-queries
tileWordingForSelector: aSelector
	"Answer the wording to emblazon on tiles representing aSelector"

	| anInterface |
	anInterface := self methodInterfaceAt: aSelector asSymbol ifAbsent:
		[ | inherent |
		inherent := aSelector inherentSelector.
		^ inherent
			ifNil:
				[self translatedWordingFor: aSelector]
			ifNotNil:
				[inherent translated]].
	^ anInterface wording