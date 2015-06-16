accessing
readoutMorph
	"Answer the submorph of mine that serves as my readout"

	^ self allMorphs detect:
		[:m | m isEtoyReadout] ifNone: [nil]