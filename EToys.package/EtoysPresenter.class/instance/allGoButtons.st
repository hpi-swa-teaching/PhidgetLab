stop-step-go buttons
allGoButtons
	"Answer a list of all script-controlling Go buttons within my scope"

	^ associatedMorph allMorphs select:
		[:aMorph | (aMorph isKindOf: ThreePhaseButtonMorph) and:
			[aMorph actionSelector == #goUp:with:]]

	"ActiveWorld presenter allGoButtons"