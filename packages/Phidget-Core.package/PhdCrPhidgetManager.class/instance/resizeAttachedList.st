updating view
resizeAttachedList

	"resize the rows according to the header"
	(attachedList scroller submorphs) do: [ :row | row sizes: self attachedListSizes].
	(attachedList header) sizes: self attachedHeaderSizes.
	attachedList height: { 120 . (attachedSensors size) * 20 + 14} max. "magic numbers - zeile + scrollbar"
	self updateMinBounds.