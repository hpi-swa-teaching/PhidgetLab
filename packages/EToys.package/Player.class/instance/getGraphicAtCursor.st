slot getters/setters
getGraphicAtCursor
	"Answer the form representing the object at the current cursor"

	| anObject aMorph |
	
	anObject := self getValueFromCostume: #valueAtCursor.
	^ anObject == 0  "weird return from GraphMorph"
		ifTrue:
			[ScriptingSystem formAtKey: #Paint]
		ifFalse:
			[((aMorph := anObject renderedMorph) isSketchMorph)
				ifTrue:
					[aMorph form]
				ifFalse:
					[aMorph isPlayfieldLike
						ifTrue:
							[aMorph backgroundForm]
						ifFalse:
							[aMorph imageForm]]]