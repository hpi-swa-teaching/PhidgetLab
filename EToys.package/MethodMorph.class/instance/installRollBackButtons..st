as yet unclassified
installRollBackButtons: target
	| mine |
	"If I don't already have such a button, put one in at the upper right.  Set its target to the furtherest enclosing book.  Send chooseAndRevertToVersion when clicked.  Stay in place via scrollBar install."

	mine := self submorphNamed: #chooseAndRevertToVersion ifNone: [nil].
	mine ifNil: [mine := SimpleButtonMorph new.
		"mine height: mine height - 2."
		mine label: 'Roll Back'; cornerStyle: #square.
		mine color: Color white; borderColor: Color black.
		mine actionSelector: #chooseAndRevertToVersion.
		mine align: mine topRight with: (self findA: ScrollBar) topLeft +(1@1).
		self addMorphFront: mine.
		mine height: mine height - 5 "14"].
	mine target: target.