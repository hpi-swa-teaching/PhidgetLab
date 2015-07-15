Etoys-Support
additionsToViewerCategoryPhidgetPort

	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(phidgetport 
			((slot Lux 'The value at the Light Sensor in lux.' Number readOnly Player getLux unused unused)))