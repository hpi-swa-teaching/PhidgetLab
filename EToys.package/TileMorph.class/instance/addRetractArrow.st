arrows
addRetractArrow
	"Must be situated in a script"

	self couldRetract ifNil: [^ self].
	retractArrow := ImageMorph new image: RetractPicture.
	suffixArrow ifNotNil: [
		self addMorph: retractArrow inFrontOf: suffixArrow].
	fullBounds := nil.
	self extent: self fullBounds extent