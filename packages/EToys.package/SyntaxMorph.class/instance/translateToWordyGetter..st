alans styles
translateToWordyGetter: key
	"  setBlob:  becomes  's blob :=  "

	^ '''s ', 
	  (self splitAtCapsAndDownshifted: (key asString allButFirst: 3) 
			withFirstCharacterDownshifted)