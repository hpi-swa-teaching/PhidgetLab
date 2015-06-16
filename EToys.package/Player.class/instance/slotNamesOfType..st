slots-user
slotNamesOfType: aType
	"Answer a list of potential slot names of the given type in the receiver"

	| fullList forViewer gettersToOffer |
	fullList := (ScriptingSystem systemSlotNamesOfType: aType),
		(self class slotGettersOfType: aType).
	forViewer := costume renderedMorph selectorsForViewer select:
		[:aSel | aSel beginsWith: 'get'].
	gettersToOffer := fullList select: [:anItem | forViewer includes: anItem].
	^ gettersToOffer collect:
		[:aSel | aSel inherentSelector]