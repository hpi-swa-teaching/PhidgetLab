create Phidget objects
getEtoysObject
	"Answer a opened PhdET object representing myself.
	If an instance cannot be created, answer nil."
	
	| typeId classObject |
	
	"get class"
	typeId := self class deviceTypeIdMap
		at: self deviceTypeId
		ifAbsent: [ nil ].
	typeId ifNil: [ ^ nil ].
	classObject := self class deviceTypeIdEtoysMap
		at: typeId
		ifAbsent: [ nil ].
	classObject ifNil: [ ^ nil ].
	
	"instantiate the class"
	^ classObject new.