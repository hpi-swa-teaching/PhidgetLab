updating view
refreshAttached

	| attachedDevicesArray |
	
	attachedList ifNil: [ ^ self ].
	"attachedDevicesInfos := manager attachedDevices."
	attachedSensors := PhdCrPhidgetManager getAttachedDevicesInfos.
	attachedDevicesArray := Array new: attachedSensors size.
	
	1 to: attachedSensors size do: [ :i | | info |
		info := attachedSensors at: i.
		attachedDevicesArray at: i put: info infoStringArray.
	].

	attachedList list: attachedDevicesArray.
	self resizeAttachedList.