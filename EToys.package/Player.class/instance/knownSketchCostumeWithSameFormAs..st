costume
knownSketchCostumeWithSameFormAs: aSketchMorph 
	| itsForm |
	itsForm := aSketchMorph form.
	^ costumes
		ifNotNil: [costumes
				detect: [:c | c isSketchMorph
						and: [c form == itsForm]]
				ifNone: []]