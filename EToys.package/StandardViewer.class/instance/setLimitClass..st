categories
setLimitClass: aClass
	"Set aClass as the limit class for this viewer"

	self limitClass: aClass.
	self relaunchViewer
