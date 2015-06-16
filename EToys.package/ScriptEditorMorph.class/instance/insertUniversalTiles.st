other
insertUniversalTiles
	"Insert universal tiles for the method at hand"

	self removeAllButFirstSubmorph.
	"fix a broken header in weasel"
	submorphs isEmpty ifFalse: [
		self firstSubmorph vResizing: #shrinkWrap.
	].
	self insertUniversalTilesForClass: playerScripted class selector: scriptName