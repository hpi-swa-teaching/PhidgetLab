accessing
enclosingPane
	"The object that owns this script layout"

	| oo higher |
	oo := self owner.
	[higher := oo isSyntaxMorph.
	higher := higher or: [oo class == TransformMorph].
	higher := higher or: [oo class == TwoWayScrollPane].
	higher ifFalse: [^ oo].
	higher] whileTrue: [oo := oo owner].
