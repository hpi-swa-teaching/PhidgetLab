type checking
okToBeReplacedBy: aSyntaxMorph
	"Return true if it is OK to replace me with aSyntaxMorph.  Enforce the type rules in the old EToy green tiles."

	| itsType myType |
	(Preferences eToyFriendly or: [Preferences typeCheckingInTileScripting])
		ifFalse: [^ true].	"not checking unless one of those prefs is true"
	(parseNode class == BlockNode and: [aSyntaxMorph parseNode class == BlockNode]) 
		ifTrue: [^ true].
	(parseNode class == ReturnNode and: [aSyntaxMorph parseNode class == ReturnNode]) 
		ifTrue: [^ true].
	parseNode class == KeyWordNode ifTrue: [^ false].
	aSyntaxMorph parseNode class == KeyWordNode ifTrue: [^ false].
	parseNode class == SelectorNode ifTrue: [^ false].
	aSyntaxMorph parseNode class == SelectorNode ifTrue: [^ false].
	owner isSyntaxMorph ifFalse: [^ true].	"only within a script"
		"Transcript show: aSyntaxMorph resultType printString, ' dropped on ', 
			self receiverOrArgType printString; cr.
		"
	(itsType := aSyntaxMorph resultType) == #unknown ifTrue: [^ true].
	(myType := self receiverOrArgType) == #unknown ifTrue: [^ true].
		"my type in enclosing message"
	^ myType = itsType