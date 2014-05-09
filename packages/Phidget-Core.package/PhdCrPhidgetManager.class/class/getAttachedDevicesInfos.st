attached Phidgets list
getAttachedDevicesInfos

	| count list |
	count := self getNumberOfAttachedDevices.
	
	"create and initialise list"
	list := Array new: count.
	1 to: count do: [ :i | | entry |
		entry := PhdCrAttachedDeviceInfo new
			deviceName: (self getAttachedDeviceNameAt: i);
			serialNumber: (self getAttachedDeviceSerialNumberAt: i);
			label: (self getAttachedDeviceLabelAt: i);
			deviceClassId: (self getAttachedDeviceClassIdAt: i);
			deviceTypeId: (self getAttachedDeviceTypeIdAt: i).
		list at: i put: entry ].
	
	^ list
	