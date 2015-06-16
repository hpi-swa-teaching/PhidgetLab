miscellaneous
tileRows
	"Answer a list of tile rows, in this case just one though it's compound"

	^ Array with: (Array with: self veryDeepCopy)