misc
drawingJustCompleted: aSketchMorph
	"The user just finished drawing.  Now maybe put up a viewer"

	| aWorld |
	self flushPlayerListCache.  "Because a new drawing already created one, thus obviating #assuredPlayer kicking in with its invalidation"

	aWorld := associatedMorph world.
	(aWorld hasProperty: #automaticFlapViewing)
		ifTrue:
			[^ aWorld presenter viewMorph: aSketchMorph].

	(aSketchMorph pasteUpMorph hasProperty: #automaticViewing)
		ifTrue:
			[self viewMorph: aSketchMorph]