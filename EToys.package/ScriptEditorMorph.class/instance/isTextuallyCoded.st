other
isTextuallyCoded
	(self topEditor isKindOf: ScriptEditorMorph) ifFalse: [^ false].  "workaround for the case where the receiver is embedded in a free-standing CompoundTileMorph.  Yecch!"
	^ self userScriptObject isTextuallyCoded