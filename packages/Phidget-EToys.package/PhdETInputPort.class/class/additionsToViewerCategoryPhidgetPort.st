Etoys-Support
additionsToViewerCategoryPhidgetPort
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	
	^ #(
		phidgetport (
			(slot Value 'The value at the Digital Intput.' Boolean readOnly Player getIfKitInputValue unused unused)
			(slot Speed 'The speed at the Digital Intput.' Boolean readOnly Player getIfKitInputSpeed unused unused)
		)
	)