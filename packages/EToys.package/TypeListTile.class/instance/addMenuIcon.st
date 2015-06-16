arrows
addMenuIcon
	"Add a little menu icon; store it in my suffixArrow slot"

	suffixArrow := ImageMorph new image: (ScriptingSystem formAtKey: #MenuTriangle).
	suffixArrow setBalloonText: 'click here to choose a new type for this parameter' translated.
	self addMorphBack: suffixArrow