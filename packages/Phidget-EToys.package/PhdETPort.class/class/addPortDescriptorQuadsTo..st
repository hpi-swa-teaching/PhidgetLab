PartsBin
addPortDescriptorQuadsTo: aList
	"analogous to addPartsDescriptorQuadsTo: aList if: aBlock from the Morph class"
	
	| info |
	info := self portDescription.
	aList add:
		{info globalReceiverSymbol.
		info nativitySelector.
		info formalName.
		info documentation.
		info sampleImageFormOrNil.
		self portType}.