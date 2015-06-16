as yet unclassified
changeSelectionAttributeTo: newAttribute

	self applyToWholeText ifTrue: [self activeEditor selectAll].
	self activeEditor replaceSelectionWith: (
		self activeEditor selection asText addAttribute: newAttribute
	).
	self activeTextMorph updateFromParagraph.