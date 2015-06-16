initialization
operator: opSymbol wording: aWording  helpString: aHelpString pad: aTilePadMorph
	"Set the operator and pad.  Builds and adds the four submorphs of the receiver -- function-name, left-paren, argument-pad, right-paren."

	argumentPad := aTilePadMorph.
	self removeAllMorphs.
	self vResizing: #shrinkWrap.
	functionNameTile := FunctionNameTile new.
	functionNameTile operator: opSymbol wording: aWording helpString: aHelpString.
	self addMorphFront: functionNameTile.
	self addMorphBack: (ImageMorph new image: (ScriptingSystem formAtKey: #LeftParenthesis)).
	self addMorphBack: aTilePadMorph.
	self addMorphBack: (ImageMorph new image: (ScriptingSystem formAtKey: #RightParenthesis))