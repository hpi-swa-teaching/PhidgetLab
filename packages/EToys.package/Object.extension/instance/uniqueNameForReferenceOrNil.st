*Etoys-viewer
uniqueNameForReferenceOrNil
	"If the receiver has a unique name for reference, return it here, else return nil"

	^ References keyAtValue: self ifAbsent: [nil]