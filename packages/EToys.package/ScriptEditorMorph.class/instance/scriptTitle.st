buttons
scriptTitle

	^ Preferences universalTiles 
		ifTrue: [SyntaxMorph new substituteKeywordFor: scriptName] 
				"spaces instead of capitals, no colons"
				"Don't use property #syntacticallyCorrectContents.  
				  scriptName here holds the truth"
		ifFalse: [scriptName].
