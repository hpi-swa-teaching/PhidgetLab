Etoys-Support
additionsToViewerCategoryPhidgetPort

	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(phidgetport 
			((slot newton 'The value at the Bar Sensor in newton.' Number readOnly 
				Player getNewton unused unused)
			(slot kilopascal 'The value at the Bar Sensor in newton per square meter.' 
				Number readOnly Player getKilopascal unused unused)))