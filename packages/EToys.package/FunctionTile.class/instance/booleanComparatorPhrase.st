dropping/grabbing
booleanComparatorPhrase
	"Answer a boolean-valued phrase derived from a retriever (e.g. 'car's heading'); this is in order to assure that tiles laid down in a TEST area will indeed produce a boolean result"

	| outerPhrase rel  |

	rel := Vocabulary numberVocabulary comparatorForSampleBoolean.
	outerPhrase := PhraseTileMorph new setOperator: rel type: #Boolean rcvrType: #Number argType: #Number.
	outerPhrase firstSubmorph addMorph: self.
	outerPhrase submorphs last addMorph: (ScriptingSystem tileForArgType: #Number).

	outerPhrase submorphs second submorphs last setBalloonText: (ScriptingSystem helpStringForOperator: rel).    
	^ outerPhrase