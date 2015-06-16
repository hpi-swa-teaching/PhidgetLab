user interface
choices
	"Answer the list of current choices for the receiver's symbol"

	dataType == #ScriptName ifTrue: "Backward compatibility with old tiles"
		[^ ActiveWorld presenter allKnownUnaryScriptSelectors].
	^ choices