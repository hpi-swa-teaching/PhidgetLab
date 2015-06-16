script editor
recompileScriptFromTilesUnlessTextuallyCoded
	"recompile Script From Tiles Unless Textually Coded"

	self isTextuallyCoded ifFalse:
		[currentScriptEditor ifNotNil: [currentScriptEditor recompileScript]]