pop ups
retractArrow
	"Return the retract arrow button.  It replaces the current message with its receiver.
	I am in a MessageNode whose first subnode is not a MessagePartNode.  I did not encounter a block on the way up to it.  I am the last subnode in every owner up to it."
	| patch |

	(self nodeClassIs: MessageNode) ifFalse: [^ nil].
	(owner isSyntaxMorph and: [owner parseNode == parseNode]) ifTrue: [^ nil].

	patch := (ImageMorph new image: (TileMorph classPool at: #RetractPicture)).
	patch on: #mouseDown send: #retract to: self.
	^ patch