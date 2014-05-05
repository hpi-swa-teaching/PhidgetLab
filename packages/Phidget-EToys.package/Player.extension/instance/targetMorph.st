*Phidget-EToys
targetMorph
	"if the my costume is a TransformationMorph (-> the original Morph was rotated) don't return "
	
	(self costume isKindOf: TransformationMorph) ifTrue: [ ^ self costume renderedMorph ].
	^ self costume