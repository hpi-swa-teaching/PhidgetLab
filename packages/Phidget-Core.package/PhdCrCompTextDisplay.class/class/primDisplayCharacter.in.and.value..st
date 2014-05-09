primitives
primDisplayCharacter: phidgetIdArray in: row and: column value: charStringArray
	"Set the charachter in row 'row' and column 'coulumn' to charStringArray.
	charStringArray is _not_ a Character, but a String exact length of 1."
	
	<primitive: 'primSetTextDisplayCharacter' module: 'PhidgetPlugin'>
	^ nil