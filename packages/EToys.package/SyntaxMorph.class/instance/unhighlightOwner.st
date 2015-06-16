highlighting
unhighlightOwner
	"Unhighlight my owner"

	(owner notNil and: [owner isSyntaxMorph]) ifTrue: [owner unhighlight]