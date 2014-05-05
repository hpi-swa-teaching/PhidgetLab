Etoys-Support
additionsToViewerCategoryPhidgetPort
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(
		PhidgetPort (
			(slot Value 'The value at the Analog Sensor (0 - 1000).' Number readOnly Player getIfKitSensorValue unused unused)
			(slot Invert 'Inverts the value. So that 0 becomes 1000, 1000 becomes 0 etc..' Boolean readWrite Player getIfKitSensorInverted Player setIfKitSensorInverted:)
		)
	)