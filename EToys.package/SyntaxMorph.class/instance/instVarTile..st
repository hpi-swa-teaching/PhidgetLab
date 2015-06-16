new tiles
instVarTile: aName
	"Make and put into hand a tile for an instance variable"

	| sm |
	sm := ((VariableNode new
					name: aName
					index: 1
					type: 1 "LdInstType") asMorphicSyntaxIn: SyntaxMorph new).
	sm roundedCorners.
	ActiveHand attachMorph: sm.
	Preferences tileTranslucentDrag
		ifTrue: [sm lookTranslucent.
			sm align: sm center with: ActiveHand position "+ self cursorBaseOffset"]
		ifFalse: [sm align: sm topLeft with: ActiveHand position + self cursorBaseOffset]
