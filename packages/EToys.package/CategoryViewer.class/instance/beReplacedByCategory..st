categories
beReplacedByCategory: chosenCategory
	"Be replaced by a category pane pointed at the chosen category"

	self outerViewer replaceSubmorph: self by: (self outerViewer categoryViewerFor: chosenCategory)
	