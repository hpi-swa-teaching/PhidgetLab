categories
limitClass
	"Answer the limit class to use in this viewer"

	| aClass |
	(aClass := self valueOfProperty: #limitClass)  ifNotNil:
		[^ aClass].

	aClass := scriptedPlayer defaultLimitClassForVocabulary: self currentVocabulary.
	self setProperty: #limitClass toValue: aClass.
	^ aClass