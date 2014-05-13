accessing
vLeftoverScrollRange
	"Return the entire scrolling range minus the currently viewed area."
	(list isNil or: [list isEmpty]) ifTrue: [^0].
	scroller localSubmorphBounds ifNil: [^ 0].
	^ (self vTotalScrollRange - bounds height + (self headerAdjustment) roundTo: self scrollDeltaHeight) max: 0
