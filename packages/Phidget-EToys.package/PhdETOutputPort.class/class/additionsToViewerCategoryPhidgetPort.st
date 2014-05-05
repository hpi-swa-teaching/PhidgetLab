Etoys-Support
additionsToViewerCategoryPhidgetPort
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(
		PhidgetPort (
			(slot Value 'The value at the Digital Output.' Boolean readWrite Player getIfKitOutputValue Player setIfKitOutputValue:)
		)
	)