Etoys-Support
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(
		(phidget (
			(slot Label 'The label of this Phidget.' String readWrite Player getLabel Player setLabel:)
		))
		
		('phidget - connection to hardware' (
			(slot Attached 'This is wether the Phidget is attached to the USB port or not.' Boolean readOnly Player getAttached unused unused)
			(slot ConnectionOpened 'This is wether a connection to the phidget is opened (=ready to use) or not.' Boolean readOnly Player getOpened unused unused)
			(command closeConnection 'Closes the connection to the (hardware) phidget.')
			(slot serialNumber 'The phidgets serial number. The serial number may be -1 to adress any phidget.' Number readOnly Player serialNumber unused unused)
			(command openLastConnection 'Opens a connection to the (hardware) phidget with the last serial number.')
			(command openAnyConnection 'Opens a connection to any (hardware) phidget that fits.')
			(command openConnectionWithSerialNumber: 'Opens a connection to the (hardware) phidget with the given serial number. If the serial number is -1 a connection to any phidget will be opened.' Number)
			(command refresh 'Checks if ID of phidget is still valid and opens any connection')
		))
	)

