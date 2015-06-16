accessing
tileRows
	"Answer, for the benefit of d&d scripting, a structure appropriate for dropping nto a script"

	^ Array with: (Array with: self getterTilesForDrop)