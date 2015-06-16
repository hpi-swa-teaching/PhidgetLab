event handling
handlesMouseDown: evt
	"Answer whether the receiver would handle the mouseDown represented by evt"

	| aPoint |
	aPoint := evt cursorPoint.
	(operatorOrExpression notNil and: [upArrow notNil]) ifTrue: [^ true].
		"Click on the operator presents list of alternatives"

	upArrow ifNotNil: [^true].
	suffixArrow ifNotNil: [^true].
	retractArrow ifNotNil: [^true].
	^ super handlesMouseDown: evt