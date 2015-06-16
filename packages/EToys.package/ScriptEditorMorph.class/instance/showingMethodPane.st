textually-coded scripts
showingMethodPane
	"Answer whether the receiver is currently showing the textual method pane"

	^ showingMethodPane ifNil: [showingMethodPane := false]