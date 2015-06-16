player
variableDocks
	"Answer a list of VariableDock objects for docking up my data with an instance held in my containing playfield.  For a numeric-readout tile."

	"Is CardPlayer class holding my variableDock, or should I be using the caching mechanism in Morph>>variableDocks?"
	| updatingString lab nn aGetter |
	(updatingString := self readOut) ifNil: [^ #()].
	updatingString getSelector ifNil: [
		lab := self submorphNamed: 'label' ifNone: [self defaultName].
		nn := lab contents asString.
		"nn at: 1 put: nn first asUppercase."
		updatingString getSelector: (aGetter := 'get',nn) asSymbol;
			putSelector: (ScriptingSystem setterSelectorForGetter: aGetter).
		].
	^ Array with: (VariableDock new 
			variableName: (updatingString getSelector allButFirst: 3) withFirstCharacterDownshifted 
			type: #number 
			definingMorph: updatingString 
			morphGetSelector: #valueFromContents 
			morphPutSelector: #acceptValue:)