viewer
viewMorph: aMorph 
	| aPlayer openViewers aViewer aPalette aRect aPoint nominalHeight aFlapTab topItem flapLoc |
	Sensor leftShiftDown 
		ifFalse: 
			[((aPalette := aMorph standardPalette) notNil and: [aPalette isInWorld]) 
				ifTrue: [^aPalette viewMorph: aMorph]].
	aPlayer := (topItem := aMorph topRendererOrSelf) assuredPlayer.
	openViewers := aPlayer allOpenViewers.
	aViewer := openViewers isEmpty ifFalse: [ openViewers first ] ifTrue: [ self nascentPartsViewer ].
	self cacheSpecs: topItem.	"redo the spec cache once in a while"

	"19 sept 2000 - allow flaps in any paste up"
	flapLoc := associatedMorph.	"world"
	Preferences viewersInFlaps  ifTrue:  [
		aViewer owner ifNotNil: [ :f | ^f flapTab showFlap; yourself ].
		aViewer setProperty: #noInteriorThumbnail toValue: true.
			aViewer initializeFor: aPlayer barHeight: 0.
			aViewer enforceTileColorPolicy.
			aViewer fullBounds.	"force layout"
			"associatedMorph addMorph: aViewer."	"why???"
			flapLoc hideViewerFlapsOtherThanFor: aPlayer.
			aFlapTab := flapLoc viewerFlapTabFor: topItem.
			aFlapTab referent submorphs 
				do: [:m | (m isKindOf: Viewer) ifTrue: [m delete]].
			aViewer visible: true.
			aFlapTab applyThickness: aViewer width + 25.
			aFlapTab spanWorld.
			aFlapTab showFlap.
			aViewer position: aFlapTab referent position.
			aFlapTab referent addMorph: aViewer beSticky.	"moved"
			flapLoc startSteppingSubmorphsOf: aFlapTab.
			flapLoc startSteppingSubmorphsOf: aViewer.
			^aFlapTab].
	aViewer initializeFor: aPlayer barHeight: 6.
	aViewer enforceTileColorPolicy.
	aViewer fullBounds.	"force layout"
	Preferences automaticViewerPlacement 
		ifTrue: 
			[aPoint := aMorph bounds right 
						@ (aMorph center y - ((nominalHeight := aViewer initialHeightToAllow) // 2)).
			aRect := (aPoint extent: aViewer width @ nominalHeight) 
						translatedToBeWithin: flapLoc bounds.
			aViewer position: aRect topLeft.
			aViewer visible: true.
			associatedMorph addMorph: aViewer.
			flapLoc startSteppingSubmorphsOf: aViewer.
			"it's already in the world, somewhat coincidentally"
			^aViewer].
	aMorph primaryHand attachMorph: (aViewer visible: true).
	^aViewer