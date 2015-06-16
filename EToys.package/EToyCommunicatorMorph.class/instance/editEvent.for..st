as yet unclassified
editEvent: anEvent for: aMorph

	| answer |

	(aMorph bounds containsPoint: anEvent cursorPoint) ifFalse: [^self].
	answer := FillInTheBlankMorph
		request: 'Enter a new ',aMorph balloonText
		initialAnswer: aMorph contents.
	answer isEmptyOrNil ifTrue: [^self].
	aMorph contents: answer
