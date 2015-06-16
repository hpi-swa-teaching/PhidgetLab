external release
methodsToStripForExternalRelease
	"Answer a list of triplets #(className, class/instance, methodName) of methods to be stripped in an external release."
	^ #(
		(EToySystem			class		prepareRelease)	
		(EToySystem			class		previewEToysOn:)
		)