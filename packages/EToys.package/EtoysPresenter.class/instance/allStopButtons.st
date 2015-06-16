stop-step-go buttons
allStopButtons
	"Answer a list of all script-controlling Stop buttons within my scope"

	^ associatedMorph allMorphs select:
		[:aMorph | (aMorph isKindOf: ThreePhaseButtonMorph) and:
			[aMorph actionSelector == #stopUp:with:]]

	"ActiveWorld presenter allStopButtons"