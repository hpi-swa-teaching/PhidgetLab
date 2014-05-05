initialization
createAndAddSubmorphs
	"Create and add label - subclasses may overwrite this method to createAndAdd more Morphs (like status morphs)."
	
	labelMorph := StringMorph new font: (TextStyle default fontAt: 2) emphasis: 1.
	self addMorph: labelMorph.