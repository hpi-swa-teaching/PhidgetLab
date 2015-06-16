card data
commitCardPlayerDataFrom: aPlayfield
	"Transport data back from the morphs that may be holding it into the instance variables that must hold it when the receiver is not being viewed"

	| prior itsOrigin |
	itsOrigin := aPlayfield topLeft.
	self class variableDocks do:
		[:aDock | aDock storeMorphDataInInstance: self].
	prior := nil.
	privateMorphs := OrderedCollection new.
	self costume ifNotNil:
		[self costume submorphs do:
			[:aMorph | aMorph renderedMorph isShared
				ifFalse:
					[aMorph setProperty: #priorMorph toValue: prior.
					privateMorphs add: aMorph.
					aMorph delete.
					aMorph position: (aMorph position - itsOrigin)].
			prior := aMorph]]