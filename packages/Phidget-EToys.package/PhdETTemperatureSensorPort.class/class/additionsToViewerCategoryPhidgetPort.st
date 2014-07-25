Etoys-Support
additionsToViewerCategoryPhidgetPort

	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(phidgetport 
			((slot Celcius 'The value at the Temperature Sensor in celcius.' Number readOnly
				Player getCelcius unused unused)
			(slot Kelvin 'The value at the Temperature Sensor in kelvin.' Number readOnly 
				Player getKelvin unused unused)
			(slot Fahrenheit 'The value at the Temperature Sensor in fahrenheit.' 
				Number readOnly Player getFahrenheit unused unused)))