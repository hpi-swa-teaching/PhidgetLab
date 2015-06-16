costume
wearCostumeOfClass: aClass
	"Assume that the costume in the library has player = nil"
	| newCostume |
	(costume renderedMorph isKindOf: aClass) ifTrue: [^ self].
	costumes ifNotNil:
		[costumes do:
			[:aCostume | (aCostume class  == aClass)
				ifTrue:
					[^ self renderedCostume: aCostume]]].

	newCostume := aClass new.
	self renderedCostume: newCostume