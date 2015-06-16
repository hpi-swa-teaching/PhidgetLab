viewer
viewObjectDirectly: anObject
	"Open up and return a viewer on the given object"

	|  aViewer aRect aPoint nominalHeight aFlapTab flapLoc |

	associatedMorph addMorph: (aViewer := self nascentPartsViewerFor: anObject).
	flapLoc := associatedMorph "world".
	Preferences viewersInFlaps ifTrue:
		[aViewer setProperty: #noInteriorThumbnail toValue: true.
		aViewer initializeFor: anObject barHeight: 0.
		aViewer enforceTileColorPolicy.
		flapLoc hideViewerFlapsOtherThanFor: anObject.
		aFlapTab := flapLoc viewerFlapTabFor: anObject.
		aFlapTab referent submorphs do: 
			[:m | (m isKindOf: Viewer) ifTrue: [m delete]].
		aFlapTab referent addMorph: aViewer beSticky.
		aViewer visible: true.
		aFlapTab applyThickness: aViewer width + 25.
		aFlapTab spanWorld.
		aFlapTab showFlap. 
		aViewer position: aFlapTab referent position.
		flapLoc startSteppingSubmorphsOf: aFlapTab.
		flapLoc startSteppingSubmorphsOf: aViewer.
		^ aFlapTab].
	
	"Caution: the branch below is historical and has not been used for a long time, though if you set the #viewersInFlaps preference to false you'd hit it.  Not at all recently maintained."
	aViewer initializeFor: anObject barHeight: 6.
	aViewer enforceTileColorPolicy.
	Preferences automaticViewerPlacement ifTrue:
		[aPoint := anObject bounds right @ 
			(anObject center y - ((nominalHeight := aViewer initialHeightToAllow) // 2)).
		aRect := (aPoint extent: (aViewer width @ nominalHeight)) translatedToBeWithin: flapLoc bounds.
		aViewer position: aRect topLeft.
		aViewer visible: true.
		flapLoc startSteppingSubmorphsOf: aViewer.
		"it's already in the world, somewhat coincidentally"
		^ aViewer].
	anObject primaryHand attachMorph: (aViewer visible: true).
	^aViewer