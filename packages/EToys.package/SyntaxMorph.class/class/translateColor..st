as yet unclassified
translateColor: aColorOrSymbol

	aColorOrSymbol isColor  ifTrue: [^ aColorOrSymbol].
	aColorOrSymbol == #comment  ifTrue: [^ Color blue lighter].
	aColorOrSymbol == #block  ifTrue: [^ Color r: 0.903 g: 1.0 b: 0.903].
	aColorOrSymbol == #method  ifTrue: [^ Color r: 0.903 g: 1.0 b: 0.903].
	aColorOrSymbol == #text  ifTrue: [^ Color r: 0.9 g: 0.9 b: 0.9].

	self noTileColor ifTrue: [^ Color r: 1.0 g: 0.839 b: 0.613].	"override"

	aColorOrSymbol == #assignment  ifTrue: [^ Color paleGreen].
	aColorOrSymbol == #keyword1  ifTrue: [^ Color paleBuff].	"binary"
	aColorOrSymbol == #keyword2  ifTrue: [^ Color paleBuff lighter].	"multipart" 
	aColorOrSymbol == #cascade  ifTrue: [^ Color paleYellow darker].	"has receiver"
	aColorOrSymbol == #cascade2  ifTrue: [^ Color paleOrange].	"one send in the cascade"
	aColorOrSymbol == #literal  ifTrue: [^ Color paleMagenta].
	aColorOrSymbol == #message  ifTrue: [^ Color paleYellow].
	aColorOrSymbol == #method  ifTrue: [^ Color white].
	aColorOrSymbol == #error  ifTrue: [^ Color red].
	aColorOrSymbol == #return  ifTrue: [^ Color lightGray].
	aColorOrSymbol == #variable  ifTrue: [^ Color paleTan].
	aColorOrSymbol == #brace  ifTrue: [^ Color paleOrange].
	aColorOrSymbol == #tempVariable  ifTrue: [^ Color paleYellow mixed: 0.75 with: Color paleGreen
		"Color yellow lighter lighter"].
	aColorOrSymbol == #blockarg2  ifTrue: [
			^ Color paleYellow mixed: 0.75 with: Color paleGreen].	"arg itself"
	aColorOrSymbol == #blockarg1  ifTrue: [^ Color paleRed].	"container"
		"yellow mixed: 0.5 with: Color white"

	^ Color tan	"has to be something!"