support
booleanPhraseForRetrieverOfType: retrieverType retrieverOp: retrieverOp player: aPlayer
	"Answer a boolean-valued phrase derived from a retriever (e.g. 'car's heading'); this is in order to assure that tiles laid down in a TEST area will indeed produce a boolean result"

	| outerPhrase getterPhrase receiverTile  rel finalTile |
	rel := (Vocabulary vocabularyForType:  retrieverType) comparatorForSampleBoolean.
	outerPhrase := PhraseTileMorph new setOperator: rel type: #Boolean rcvrType: retrieverType argType: retrieverType.
	getterPhrase :=  PhraseTileMorph new setOperator: retrieverOp type: retrieverType rcvrType: #Player.
	getterPhrase submorphs last setSlotRefOperator: retrieverOp.
	getterPhrase submorphs first changeTableLayout.
	receiverTile := aPlayer tileToRefer bePossessive.
	receiverTile position: getterPhrase firstSubmorph position.
	getterPhrase firstSubmorph addMorph: receiverTile.

	outerPhrase firstSubmorph addMorph: getterPhrase.
	finalTile := ScriptingSystem tileForArgType: retrieverType.	"comes with arrows"
	outerPhrase submorphs last addMorph: finalTile.
	outerPhrase submorphs second submorphs last setBalloonText: (ScriptingSystem helpStringForOperator: rel).    
	^ outerPhrase