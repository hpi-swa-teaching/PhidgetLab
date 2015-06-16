background
addCardsFromClipboardData
	"Using the current background, paste data from the (textual) clipboard to create new records.  The data are in each record are expected to be tab-delimited, and to occur in the same order as the instance variables of the current-background's cards "

	| clip |
	(clip := Clipboard clipboardText) isEmptyOrNil ifTrue: [^ Beeper beep].
	self addCardsFromString: clip