accessing
color: aColorOrSymbol

	| deselectedColor cc |
	aColorOrSymbol isColor ifTrue: [
		self valueOfProperty: #deselectedColor ifAbsent: ["record my color the first time"
			self setProperty: #deselectedColor toValue: aColorOrSymbol.
			^ super color: (self scaleColorByUserPref: aColorOrSymbol)].
		^ super color: aColorOrSymbol].

	deselectedColor := self valueOfProperty: #deselectedColor ifAbsent: [nil].
	deselectedColor ifNotNil: [^ super color: (self scaleColorByUserPref: deselectedColor)].

	aColorOrSymbol == #comment  ifTrue: [^ self color: Color blue lighter].
	SyntaxMorph noTileColor ifTrue: [	"override"
		^ self color: Color transparent].	"Fix this to be real color!"

	(cc := self class translateColor: aColorOrSymbol) isColor
		ifTrue: [^ self color: cc]
		ifFalse: [Transcript show: aColorOrSymbol, ' needs to be handled in translateColor:'; cr.
			^ self color: Color transparent].	"help!"