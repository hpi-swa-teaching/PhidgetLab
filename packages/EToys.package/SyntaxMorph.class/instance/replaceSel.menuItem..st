pop ups
replaceSel: evt menuItem: stringMorph
	"I rep a SelectorNode.  Replace my selector with new one that was just chosen from a menu"

	| menu new old newSel ms oa na case news |
	(menu := stringMorph owner owner) class == RectangleMorph ifTrue: [
		menu delete].
	new := stringMorph contents.
	new first = $( ifTrue: [^ self].	"Cancel"
	new first = $  ifTrue: [^ self].	"nothing"
	news := String streamContents: [:strm | "remove fake args"
		(new findBetweenSubStrs: {' 5'. Character space.}) do: [:part | strm nextPutAll: part]].
	newSel := stringMorph valueOfProperty: #syntacticallyCorrectContents.
	newSel ifNil: [newSel := news].
	old := (ms := self findA: StringMorph) valueOfProperty: #syntacticallyCorrectContents.
	old ifNil: [old := (self findA: StringMorph) contents].
	oa := old numArgs.  na := newSel numArgs.  case := 5.
	(oa = 1) & (na = 1) ifTrue: [case := 1]. 
	(oa = 0) & (na = 0) ifTrue: [case := 2].
	(oa = 1) & (na  = 0) ifTrue: [case := 3].
	(oa = 0) & (na  = 1) ifTrue: [case := 4].
	case <= 4 ifTrue: ["replace the selector"
		ms contents: news.	"not multi-part"
		ms setProperty: #syntacticallyCorrectContents toValue: newSel].
	case = 3 ifTrue: [owner tossOutArg: 1].
	case = 4 ifTrue: [self addArg: 1].
	"more cases here.  Rebuild the entire MessageNode"
	
	self acceptIfInScriptor.