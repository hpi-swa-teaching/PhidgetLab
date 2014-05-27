Etoys-Support
additionsToViewerCategoryPhidgetPort
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(
		PhidgetPort (
			(slot PortNumber 'The index of this Port.' Number readWrite Player getPortNumber Player setPortNumber:)
			(slot ShowWire 'This is wether a wire from this Port to its Phidget is shown.' Boolean readWrite Player getShowWire Player setShowWire:)
		)
	)