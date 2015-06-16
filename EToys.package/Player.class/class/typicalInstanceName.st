other
typicalInstanceName
	"For the purpose of documentation, answer the name of a named instance of the receiver, if possible, else answer the class name"

	| known |
	known := (self allInstances collect: [:i | i knownName]) detect: [:n | n isEmptyOrNil not] ifNone: [nil].
	^ known ifNil: [self name]