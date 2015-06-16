as template
matchIndex: newPlace
	| tms pair |
	"One we are looking at, in cards that matched the last template search."

	tms := self class classPool at: #TemplateMatches ifAbsent: [
		self class addClassVarName: 'TemplateMatches'.
		self class classPool at: #TemplateMatches put: IdentityDictionary new].
	pair := tms at: self ifAbsentPut: [Array new: 2].
	pair at: 2 put: newPlace.
	newPlace = 0 ifTrue: [^ self].
	pair first ifNil: [^ self].
	(costume valueOfProperty: #myStack ifAbsent: [^ self]) goToCard: 
		((pair first "list") at: newPlace).
	self changed: #matchIndex.	"update my selection"
