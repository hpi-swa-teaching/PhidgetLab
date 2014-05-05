create Phidget objects
getCoreObject
	"Answer a PhdCr object representing myself. The serial number is preset, but the object is not opened yet.
	If an instance cannot be created, answer nil."
	
	| classId classObject object |
	
	"get class"
	classId := self class deviceClassIdMap
		at: self deviceClassId
		ifAbsent: [ nil ].
	classId ifNil: [ ^ nil ].
	classObject := self class deviceClassIdCoreMap
		at: classId
		ifAbsent: [ nil ].
	classObject ifNil: [ ^ nil ].
	
	"instantiate the class with my serial number"
	object := classObject new.
	object initialSerialNumber: self serialNumber.
	
	^ object