miscellaneous
setToBearDefaultLiteral
	"Set the receiver so that it contains only a tile reflecting the default literal value for a pad of this type"

	self removeAllMorphs.
	self addMorphBack: (Vocabulary vocabularyForType: type) defaultArgumentTile