dropping/grabbing
justDroppedInto: newOwner event: evt
	"Phrase tiles only auto-expand if they originate from viewers.  Any phrase tile, once dropped, loses its auto-phrase-expansion thing"

	justGrabbedFromViewer := false.
	super justDroppedInto: newOwner event: evt