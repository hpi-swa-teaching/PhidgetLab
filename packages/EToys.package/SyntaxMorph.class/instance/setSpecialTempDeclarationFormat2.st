alans styles
setSpecialTempDeclarationFormat2

	"the inner template for temp defs"

	self 
		specialColor: self lighterColor 
		andBorder:  self darkerColor.
	"self 
		specialColor: (Color r: 1.0 g: 1.0 b: 0.548) 
		andBorder:  (Color r: 0.581 g: 0.774 b: 0.903)."
	self useRoundedCorners.
	self layoutInset: 1.
	"self setProperty: #variableInsetSize toValue: 6."
