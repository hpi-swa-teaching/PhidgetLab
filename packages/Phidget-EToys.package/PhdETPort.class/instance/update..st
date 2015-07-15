updating
update: type
	"This method is called if a value of the phidget I belong has changed.
	This gives me the opportunity to update my appereance if the given type matches mine."

	type = self class portType ifTrue: [ self update ].