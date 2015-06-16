pop ups
extendArrow
	"Return the extend arrow button.  It replaces the argument with a new message.
	I am a number or getter messageNode."
	| patch |
	
	self isNoun ifFalse: [^ nil].
	self isDeclaration ifTrue: [^ nil].
	patch := (ImageMorph new image: (TileMorph classPool at: #SuffixPicture)).
	patch on: #mouseDown send: #extend to: self.
	^ patch