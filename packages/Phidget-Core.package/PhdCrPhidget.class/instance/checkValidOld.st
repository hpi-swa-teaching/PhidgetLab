accessing
checkValidOld
	"Checks if the Phidgets has an id and if this id is valid."

	^ id isNil not and: [ | result |
		result := (self class primIsValid: id) == 1.
		result ifFalse: [
			"this may have happened if a Phidget was created and then the image was saved,
			closed and reloaded. The hardware connection is broken. We need to make this
			instance fully invalid."
			id := nil.
			self doPostCloseOperations ].
		result ]