miscellaneous
tileRows
	"Answer a list of tile rows -- in this case exactly one row -- representing the receiver.  The fullCopy is deeply problematical here in the presence of the formerOwner property, so it the latter is temporarily set aside"

	^ Array with: (Array with: self veryDeepCopy)