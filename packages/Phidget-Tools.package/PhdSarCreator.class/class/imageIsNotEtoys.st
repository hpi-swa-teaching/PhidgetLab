installScripting
imageIsNotEtoys

	"Returns code in string for execution when installing sar file"
	^ '(''*etoys*'' match: (SystemVersion current version)) not '