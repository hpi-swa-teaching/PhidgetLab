private
line1: line1
	"Emblazon the receiver with the requested label.  If the receiver already has a label, make the new label be of the same class"

	| m desiredW classToUse lab |
	classToUse := (lab := self labelMorph) ifNotNil: [lab class] ifNil: [StringMorph].
	self removeAllMorphs.
	m := classToUse contents: line1 font: ScriptingSystem fontForTiles.
	desiredW := m width + 6.
	self extent: (desiredW max: self minimumWidth) @ self class defaultH.
	m position: self center - (m extent // 2).
	self addMorph: m.
