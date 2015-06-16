other
methodString
	"Answer the source-code string for the receiver.  This is for use by classic tiles, but is also used in universal tiles to formulate an initial method declaration for a nascent user-defined script; in universalTiles mode, the codeString (at present anyway) is empty -- the actual code derives from the SyntaxMorph in that case"

	| k methodNode string |
	playerScripted class compileSilently: (string := String streamContents:
		[:aStream |
			aStream nextPutAll: scriptName.
			scriptName endsWithAColon ifTrue:
				[aStream nextPutAll: ' parameter'].
			aStream cr; cr; tab.
			aStream nextPutAll: self codeString.
	]) classified: 'temporary'.

	k := KedamaVectorizer new initialize.
	(k includesTurtlePlayer: (playerScripted class decompile: scriptName) for: playerScripted) ifFalse: [^ string].

	methodNode := k vectorize: (playerScripted class decompile: scriptName) 	object: playerScripted.
	^ methodNode decompileString.
