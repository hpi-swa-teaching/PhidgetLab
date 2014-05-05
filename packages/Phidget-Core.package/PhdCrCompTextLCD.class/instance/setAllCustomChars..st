accessing
setAllCustomChars: aCollection
	"Sets all custom characters using the given collection."
	
	(aCollection isKindOf: SequenceableCollection) ifFalse: [ self error: 'Value must be kind of a Sequenceable Collection.' ].
	aCollection size == 8 ifFalse: [ self error: 'Value must have 8 entries.' ].
	aCollection do: [ :element | 
		(element isKindOf: PhdCrCustomChar) ifFalse: [
			self error: 'All Values must be kind of a PhdCrCustomChar.']  ].
	
	customChars := aCollection.
	
	1 to: aCollection size do: [ :i |
		self setCustomCharAt: i to: (aCollection at: i) ].