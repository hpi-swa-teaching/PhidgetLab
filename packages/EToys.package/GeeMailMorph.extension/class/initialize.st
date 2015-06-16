*etoys-customevents-user events
initialize
	"AlansTextPlusMorph initialize"
	ScriptingSystem addCustomEventFor: self named: #scrolledIntoView help: 'when I am scrolled into view in a GeeMailMorph' targetMorphClass: Morph.
	ScriptingSystem addCustomEventFor: self named: #scrolledOutOfView help: 'when I am scrolled out of view in a GeeMailMorph'  targetMorphClass: Morph.
