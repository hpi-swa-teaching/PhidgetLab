choice of function
options
	"Answer the options of the tile for an arrow"

	| aTable |
	aTable := ScriptingSystem tableOfNumericFunctions reversed.

	^ Array with:
				(aTable collect: [:pr | pr first] ), #(grouped)
			with:
				(aTable collect: [:pr | pr second]), #(grouped)