stop-step-go buttons
allStepButtons
	"Answer a list of all the script-controlling Step buttons within my scope"

	^ associatedMorph allMorphs select:
		[:aMorph | (aMorph isKindOf: ThreePhaseButtonMorph) and:
			[aMorph actionSelector == #stepStillDown:with:]]

	"ActiveWorld presenter allStepButtons"