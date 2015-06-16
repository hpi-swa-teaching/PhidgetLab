queries
browseVersionsOf: aSelector 
	"Open a browser on versions of aSelector"
	| aClass |
	aClass := scriptedPlayer class whichClassIncludesSelector: aSelector.
	VersionsBrowser browseVersionsForClass: aClass selector: aSelector