layout
unfoldMessage
	"I am a message whose message part is a column.
	Rearrange me so that the entire message is one row."
	| messageRow |
	messageRow := self submorphs last.
	self removeMorph: messageRow.
	messageRow submorphs do: [:m | self addMorphBack: m].

