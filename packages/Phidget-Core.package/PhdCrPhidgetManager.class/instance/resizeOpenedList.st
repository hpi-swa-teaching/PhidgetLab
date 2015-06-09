updating view
resizeOpenedList

	"resize the rows according to the header"
	(openedList scroller submorphs) do: [ :row | row sizes: self openedListSizes].
	(openedList header) sizes: self openedHeaderSizes.
	openedList height: { 120 . (openedPhidgets size) * 20 + 14} max. "magic numbers - zeile + scrollbar"
	self updateMinBounds.
	