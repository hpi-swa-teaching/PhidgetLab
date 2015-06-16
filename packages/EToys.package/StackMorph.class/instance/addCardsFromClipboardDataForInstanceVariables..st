background
addCardsFromClipboardDataForInstanceVariables: slotNames
	"Using the current background, paste data from the (textual) clipboard to create new records.  No senders, but can be usefully called manually for selectively bringing in data in oddball format."

	| clip |
	(clip := Clipboard clipboardText) isEmptyOrNil ifTrue: [^ Beeper beep].
	self addCardsFromString: clip slotNames: slotNames