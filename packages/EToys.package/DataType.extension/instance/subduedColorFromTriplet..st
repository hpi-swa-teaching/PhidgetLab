*Etoys-color
subduedColorFromTriplet: anRGBTriplet
	"Currently:  as an expedient, simply return a standard system-wide constant; this is used only for the border-color of tiles...
	Formerly:  Answer a subdued color derived from the rgb-triplet to use as a tile color."

	^ ScriptingSystem standardTileBorderColor
"
	^ (Color fromRgbTriplet: anRGBTriplet) mixed: ScriptingSystem colorFudge with: ScriptingSystem uniformTileInteriorColor"