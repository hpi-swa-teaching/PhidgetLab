updating
saveScriptVersion: timeStamp
	"Save the tile script version by appending a pair of the form

		<time stamp>     <morph list>

to my list of former scripting tiles.  The morph-list will get copied back into the Scriptor following restoration.  Only applies to classic tiles."

	Preferences universalTiles ifFalse:  "the following only applies to Classic tiles"
		[(currentScriptEditor notNil and: [currentScriptEditor showingMethodPane not]) ifTrue:
				[formerScriptingTiles ifNil: [formerScriptingTiles := OrderedCollection new].
				formerScriptingTiles add:
					(Array with: timeStamp
						with: (currentScriptEditor submorphs allButFirst collect: [:m | m veryDeepCopy])).
				formerScriptingTiles size > 100 ifTrue: [^ self halt: 'apparent runaway versions, proceed at your own risk.']]]