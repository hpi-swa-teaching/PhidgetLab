as yet unclassified
isExpanded: aBoolean

	| tm |
	super isExpanded: aBoolean.
	tm := self repositionText.
	isExpanded ifFalse: [
		self height: tm height.
	].
	self addMorph: tm.
	"tm clipToOwner: isExpanded not."		"not really working right yet"

