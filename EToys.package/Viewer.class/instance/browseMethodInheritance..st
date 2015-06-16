queries
browseMethodInheritance: aSelector 
	"Open an inheritance browser on aSelector"
	| aClass |
	aClass := scriptedPlayer class whichClassIncludesSelector: aSelector.
	self systemNavigation methodHierarchyBrowserForClass: aClass selector: aSelector