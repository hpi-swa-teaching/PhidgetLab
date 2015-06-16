other
methodNodeMorph
	"Answer the morph that constitutes the receiver's method node"

	submorphs size < 2  ifTrue: [^ nil].
	^ self findDeepSubmorphThat:
		[:aMorph | (aMorph isSyntaxMorph) and:
				[aMorph parseNode isKindOf: MethodNode]]
			ifAbsent: [nil]