accessing
leftoverScrollRange
	"Return the entire scrolling range minus the currently viewed area."
	scroller localSubmorphBounds ifNil: [^ 0].
	^ (self totalScrollRange - bounds height + (self headerAdjustment) roundTo: self scrollDeltaHeight) max: 0
