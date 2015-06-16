queries
browseMethodFull: aSelector 
	"Open a traditional browser on aSelector, in whatever class implements 
	aSelector "
	| aClass |
	aClass := scriptedPlayer class whichClassIncludesSelector: aSelector.
	Browser fullOnClass: aClass selector: aSelector