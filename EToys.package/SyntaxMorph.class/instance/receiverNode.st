accessing
receiverNode
	"If I am (have) a MessageNode, return the node of the receiver.  Watch out for foolish noise words."

	parseNode class == MessageNode ifFalse: [^ nil].
	parseNode receiver ifNil: [^ nil].
	submorphs do: [:ss | 
		ss isSyntaxMorph ifTrue: [
			ss parseNode ifNotNil: ["not noise word"
				ss isNoun ifTrue: [^ ss] 
					ifFalse: [^ nil "found selector"]]]].
	^ nil