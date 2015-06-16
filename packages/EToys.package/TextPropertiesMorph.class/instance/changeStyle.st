as yet unclassified
changeStyle

	| aList reply style |

	aList := StrikeFont actualFamilyNames.
	aList addFirst: 'DefaultTextStyle'.
	reply := UIManager default chooseFrom: aList values: aList lines: #(1).
	reply ifNil: [^self].

	(style := TextStyle named: reply) ifNil: [Beeper beep. ^ true].
	self applyToWholeText ifTrue: [self activeEditor selectAll].
	self activeEditor changeStyleTo: style copy.
	self activeTextMorph updateFromParagraph.