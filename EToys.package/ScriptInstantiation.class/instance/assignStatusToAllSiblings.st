misc
assignStatusToAllSiblings
	"Let all sibling instances of my player have the same status that I do.  The stati affected are both the event stati and the tickingStati"

	
	(player class allInstances copyWithout: player) do:
		[:aPlayer | | aScriptInstantiation |
			aScriptInstantiation := aPlayer scriptInstantiationForSelector: selector.
			aScriptInstantiation status: status.
			aScriptInstantiation frequency: self frequency.
			aScriptInstantiation tickingRate: self tickingRate.
			aScriptInstantiation updateAllStatusMorphs]