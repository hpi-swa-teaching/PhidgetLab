arrows
setLiteral: aLiteral
	super  setLiteral: aLiteral.
	(self findA: UpdatingStringMorph) useSymbolFormat; lock