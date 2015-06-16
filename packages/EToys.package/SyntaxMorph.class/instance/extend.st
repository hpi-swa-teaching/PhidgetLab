pop ups
extend
	| messageNodeMorph first |
	"replace this noun with a new message like (arg + 1).  If type is not known, ask the user to type in a selector.  Use nil as arg.  Let user drag something to it afterwards."

	"Later do evaluation of self to see what type and offer right selector"
	self deselect.
	messageNodeMorph := (MessageSend receiver: 1 selector: #+ arguments: #(1))
								asTilesIn: Player globalNames: false.
	owner replaceSubmorph: self by: messageNodeMorph.
	first := messageNodeMorph submorphs detect: [:mm | mm isSyntaxMorph].
	messageNodeMorph replaceSubmorph: first by: self.
	self acceptIfInScriptor.