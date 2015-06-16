dropping/grabbing
wantsDroppedMorph: aMorph event: evt
	"Removing this method entirely would be okay someday"

	^ false
"
	^ (aMorph isKindOf: TileMorph) or:
	   [(aMorph isKindOf: ScriptEditorMorph) or:
	   [(aMorph isKindOf: CompoundTileMorph) or:
	   [aMorph isKindOf: CommandTilesMorph]]]"
