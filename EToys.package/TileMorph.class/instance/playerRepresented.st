commands
playerRepresented
	"Answer the player represented by the receiver. Morphs that serve as 
	references to other morphs reimplement this; by default a morph 
	represents its own player."
	^ type == #objRef
		ifTrue: [actualObject]
		ifFalse: [super playerRepresented]