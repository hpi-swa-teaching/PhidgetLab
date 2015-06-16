*Etoys-color
subduedColorFrom: aColor
	"Answer a subdued color derived from the given color"

	^ aColor mixed: ScriptingSystem colorFudge with: ScriptingSystem uniformTileInteriorColor