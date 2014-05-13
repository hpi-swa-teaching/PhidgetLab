instance creation
editOn: arrayOfStrings
	"Create a default representation."
	|inst|

	arrayOfStrings class = self ifTrue: [^arrayOfStrings makeEditable]. "Well, if we are passed an instance of ourselves, just return it."
	inst := self new.
	inst
		setStrings: arrayOfStrings;
		makeEditable;
		defaultAlignments;
		setSquishLeft;
		showAll;
		color: Color black.
^inst
