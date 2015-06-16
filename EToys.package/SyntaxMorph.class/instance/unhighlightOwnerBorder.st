highlighting
unhighlightOwnerBorder
	"Unhighlight my owner's border"

	(owner notNil and: [owner isSyntaxMorph]) 
		ifTrue: [owner unhighlightBorder]