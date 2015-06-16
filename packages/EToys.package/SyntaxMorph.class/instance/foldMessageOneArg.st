layout
foldMessageOneArg
	"I am a message that is wide, a row with receiver and a row with selector and arg.
	Rearrange me so that the message part appears indented under the receiver part."
	| messageRow node2 |
	node2 := parseNode copy receiver: nil.
	messageRow := SyntaxMorph row: #keyword1 on: node2.
	messageRow addMorph: (self transparentSpacerOfSize: 20@10);
			addMorphBack: submorphs second;
			addMorphBack: submorphs second.  "was the third"
	self listDirection: #topToBottom;
		wrapCentering: #topLeft;
		addMorphBack: messageRow.
