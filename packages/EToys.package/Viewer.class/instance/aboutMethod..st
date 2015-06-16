queries
aboutMethod: aSelector 
	"Give the user documentation for the selector"
	| aClass help |
	aClass := scriptedPlayer class whichClassIncludesSelector: aSelector.
	help := aClass firstCommentAt: aSelector.
	help
		ifNotNil: [self
				inform: (help string withNoLineLongerThan: 25)]