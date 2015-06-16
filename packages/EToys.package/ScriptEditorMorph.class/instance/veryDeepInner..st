copying
veryDeepInner: deepCopier
	"Copy all of my instance variables.  Some need to be not copied at all, but shared.  	Warning!!  Every instance variable defined in this class must be handled.  We must also implement veryDeepFixupWith:.  See DeepCopier class comment."

	super veryDeepInner: deepCopier.
	scriptName := scriptName veryDeepCopyWith: deepCopier.
	firstTileRow := firstTileRow veryDeepCopyWith: deepCopier.
	timeStamp := timeStamp veryDeepCopyWith: deepCopier.
	playerScripted := playerScripted.		"Weakly copied"
	handWithTile := nil.  "Just a cache"
	showingMethodPane := showingMethodPane.	"boolean"
	threadPolygon := nil. "Just a cache".

