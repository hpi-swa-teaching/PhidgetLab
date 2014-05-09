instance creation
on: arrayOfStrings
	"Create a default representation."
	|inst|

	arrayOfStrings class = self ifTrue: [^arrayOfStrings]. "Well, if we are passed an instance of ourselves, just return it."
	inst _ self new.
	inst
		setStrings: arrayOfStrings;
		defaultAlignments;
		setSquishLeft;
		showAll;
		color: Color black.
^inst
