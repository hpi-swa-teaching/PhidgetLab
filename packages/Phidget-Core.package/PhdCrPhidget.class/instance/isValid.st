accessing
isValid
	"Checks if the Phidget has an id and if this id is valid."

	^ id isNil not and: [ (self class primIsValid: id) == 1 ]