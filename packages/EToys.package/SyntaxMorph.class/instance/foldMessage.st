layout
foldMessage
	"I am a message whose receiver is wide, and whose message part is a column.
	Rearrange me so that the message part appears indented under the receiver part."
	| messageRow node2 |
	node2 := parseNode copy receiver: nil.
	messageRow := SyntaxMorph row: #keyword1 on: node2.

	messageRow 
		addMorph: (self transparentSpacerOfSize: 20@10);
		addMorphBack: submorphs last.		"<<handle noise words better"
	self listDirection: #topToBottom;
		wrapCentering: #topLeft;
		addMorphBack: (self transparentSpacerOfSize: 4@4);
		addMorphBack: messageRow.
