sarCreation
imageIsEtoys

	"Returns code in string for execution when installing sar file"
	^ '(''*etoys*'' match: (SystemVersion current version)) '