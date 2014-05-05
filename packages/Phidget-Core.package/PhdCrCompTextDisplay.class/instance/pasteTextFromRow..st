scrolling
pasteTextFromRow: aNumber
	"A Method used to support scrolling.
	Combines the text of a specific row and the seperator. Ensures that the pasteText never is an empty String."
	
	| pasteText |
	pasteText := (text at: aNumber) asString , seperator asString.
	(pasteText == '') ifTrue: [ ^ ' ' ].
	^ pasteText