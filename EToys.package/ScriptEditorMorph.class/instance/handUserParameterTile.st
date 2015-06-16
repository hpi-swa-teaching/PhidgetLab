other
handUserParameterTile
	"Hand the user a parameter, presumably to drop in the script"
	
	| aTileMorph |
	aTileMorph := ParameterTile new forScriptEditor: self.
	self currentHand attachMorph: aTileMorph