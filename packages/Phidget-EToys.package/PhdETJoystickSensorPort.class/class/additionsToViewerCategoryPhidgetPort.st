as yet unclassified
additionsToViewerCategoryPhidgetPort
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(
		phidgetport (
			(slot Invert 'Inverts the value. So that 0 becomes 1000, 1000 becomes 0 etc..' Boolean readWrite Player getIfKitSensorInverted Player setIfKitSensorInverted:)
			(slot Speed 'The speed at the Analog Sensor value change (0 - 1000).' Number readOnly Player getIfKitSensorSpeed unused unused)
			(slot YSpeed 'The speed at the Y-Analog Sensor value change (0 - 1000).' Number readOnly Player getIfKitSensorYSpeed unused unused)
			(slot YValue 'The Y-Value at the Analog Sensor value change (0 - 1000).' Number readOnly Player getIfKitSensorYValue unused unused)
			(slot Angle 'The angle of the joystick values.' Number readOnly Player getAngle unused unused)
			(slot Amplitude 'How far you push the the joystick forward.' Number readOnly Player getAmplitude unused unused)
		)
	)