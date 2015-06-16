viewer
viewObject: anObject
	"Open up and return a viewer on the given object.  If the object is a Morph, open a viewer on its associated Player"

	anObject isMorph
		ifTrue:
			[self viewMorph: anObject]  "historic morph/player implementation"
		ifFalse:
			[self viewObjectDirectly: anObject]