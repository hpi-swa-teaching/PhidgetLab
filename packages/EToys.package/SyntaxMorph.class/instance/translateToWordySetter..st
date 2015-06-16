alans styles
translateToWordySetter: key
	"  setBlob:  becomes  's blob _  "

	^ '''s ', 
	  (self splitAtCapsAndDownshifted: (key asString allButFirst: 3) allButLast 
			withFirstCharacterDownshifted), 
	  ' _'