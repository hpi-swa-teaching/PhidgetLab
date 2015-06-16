versions
revertScriptVersionFrom: anEditor 
	"Let user choose which prior tile version to revert to, and revert to it"

	| result |
	formerScriptEditors isEmptyOrNil ifTrue: [^Beeper beep].
	result := formerScriptEditors size = 1 
		ifTrue: [formerScriptEditors first]
		ifFalse: 
			[UIManager default 
						chooseFrom: (formerScriptEditors collect: [:e | e timeStamp])
						values: formerScriptEditors].
	result 
		ifNotNil: [self revertScriptVersionFrom: anEditor installing: result]