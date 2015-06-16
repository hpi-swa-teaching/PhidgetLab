accessing
updatingStringMorph
	"If the receiver has an updatingStringMorph as a submorph, answer it, else answer nil"
	
	^ submorphs detect: [:m | m isKindOf: UpdatingStringMorph] ifNone: [nil]