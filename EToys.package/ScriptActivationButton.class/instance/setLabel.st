miscellaneous
setLabel
	"Allow the user to enter a new label for this button"

	| newLabel existing |
	existing := self label.
	newLabel := UIManager default
		request: 'Please enter a new label for this button'
		initialAnswer: existing.
	(newLabel isEmptyOrNil not and: [newLabel ~= existing]) ifTrue:
		[self setProperty: #labelManuallyEdited toValue: true.
		self label: newLabel].
