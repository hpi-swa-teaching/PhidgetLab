updating view
refreshAttached

	| attachedDevicesInfos attachedDevicesArray |
	
	attachedList ifNil: [ ^ self ].
	"attachedDevicesInfos := manager attachedDevices."
	attachedDevicesInfos := PhdCrPhidgetManager getAttachedDevicesInfos.
	attachedDevicesArray := Array new: attachedDevicesInfos size.
	
	1 to: attachedDevicesInfos size do: [ :i | | info |
		info := attachedDevicesInfos at: i.
		attachedDevicesArray at: i put: info infoStringArray.
	].

	attachedList list: attachedDevicesArray.