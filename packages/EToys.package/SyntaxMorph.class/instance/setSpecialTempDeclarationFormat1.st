alans styles
setSpecialTempDeclarationFormat1

	"the outer template for temp defs"

	self 
		specialColor: self darkerColor 
		andBorder: self lighterColor.
	"self 
		specialColor: (Color lightYellow) 
		andBorder: (Color r: 0.581 g: 0.774 b: 0.903)."
	self useRoundedCorners.
	self layoutInset: 1.
	self cellPositioning: #center.
	"self setProperty: #variableInsetSize toValue: 6."
