page controls
addPageControlMorph: aMorph
	"Add the given morph as a page-control, at the appropriate place"

	aMorph setProperty: #pageControl toValue: true.
	self addPane: aMorph paneType: #pageControl