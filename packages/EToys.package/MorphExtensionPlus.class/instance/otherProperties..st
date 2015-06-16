accessing
otherProperties: p
	"Set the receiver's otherProperties.  If the argument provided is empty, put nil in its place."

	otherProperties := p isEmptyOrNil ifTrue: [nil] ifFalse: [p]