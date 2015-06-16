miscellaneous
booleanComparatorPhrase
	"Answer a boolean-valued phrase derived from a retriever (e.g. 'car's heading'); this is in order to assure that tiles laid down in a TEST area will indeed produce a boolean result"

	| outerPhrase rel retrieverType |
	retrieverType := self resultType.

	rel := (Vocabulary vocabularyForType: retrieverType) comparatorForSampleBoolean.
	outerPhrase := PhraseTileMorph new setOperator: rel type: #Boolean rcvrType: retrieverType argType: retrieverType.
	outerPhrase firstSubmorph addMorph: self.
	outerPhrase submorphs last addMorph: (ScriptingSystem tileForArgType: retrieverType).

	outerPhrase submorphs second submorphs last setBalloonText: (ScriptingSystem helpStringForOperator: rel).    
	^ outerPhrase