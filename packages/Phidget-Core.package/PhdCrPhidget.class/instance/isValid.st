accessing
isValid
	"Checks if the Phidget has an id and if this id is valid."

	^ id notNil and: [ (self class primIsValid: id) == 1 ]