initialization
updateHeader
	"Replace my header morph with another one assured of being structurally au courant"
	
	(firstTileRow notNil and: [firstTileRow > 1]) ifTrue:
		[self replaceRow1]