initialization
setPixelValueRoot: opSymbol type: opType rcvrType: rcvrType argType: argType vocabulary: aVocabulary
	"Add submorphs to make me constitute a setter of the given symbol"

	| anAssignmentTile |
	resultType := opType.
	self color: (ScriptingSystem colorForType: opType).
	self removeAllMorphs.
	self addMorph: (TilePadMorph new setType: rcvrType).
	anAssignmentTile := KedamaSetPixelValueTile new rawVocabulary: aVocabulary.
	self addMorphBack: (anAssignmentTile typeColor: color).
	anAssignmentTile setRoot: opSymbol asString dataType: argType.
	self addMorphBack: (TilePadMorph new setType: argType)