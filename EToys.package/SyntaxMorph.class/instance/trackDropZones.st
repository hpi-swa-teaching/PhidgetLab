insertion drop zones
trackDropZones
	| hand i localPt insertion insHt ii prevBot nxtHt d c1 c2 ht2 spacer1 spacer2 wid ht1 dc each |
	hand := self primaryHand.
	("hand lastEvent redButtonPressed &" hand hasSubmorphs
		and: [(self hasOwner: hand) not]) ifFalse: [^ self].

	insertion := hand firstSubmorph renderedMorph.
	insertion isSyntaxMorph ifFalse: [^ self].
	insertion isNoun ifFalse: [(insertion nodeClassIs: CommentNode) ifFalse: [^ self]].
	localPt := self globalPointToLocal: hand position.
	insHt := insertion height.  "**just use standard line height here"
	self removeDropZones.  "Maybe first check if in right place, then just tweak heights."
	i := (ii := self indexOfMorphAbove: localPt) min: submorphs size-1.
	prevBot := i <= 0 ifTrue: [(self innerBounds) top]
					ifFalse: [(self submorphs at: i) bottom].
	nxtHt := (submorphs isEmpty
		ifTrue: [insertion]
		ifFalse: [self submorphs at: i+1]) height.
	d := ii > i ifTrue: [nxtHt "for consistent behavior at bottom"]
			ifFalse: [0 max: (localPt y - prevBot min: nxtHt)].

	"Top and bottom spacer heights cause continuous motion..."
	c1 := Color transparent.  c2 := Color transparent.
	ht2 := d*insHt//nxtHt.  ht1 := insHt - ht2.
	wid := self width - (2*borderWidth) - (2*self layoutInset).
	wid isPoint ifTrue: [wid := wid x].
	(spacer1 := BorderedMorph newBounds: (0@0 extent: wid@ht1)
				color: (ht1 > (insHt//2) ifTrue: [c1] ifFalse: [c2]))
					borderWidth: 1; borderColor: spacer1 color.
	self privateAddMorph: spacer1 atIndex: (i+1 max: 1).
	(spacer2 := BorderedMorph newBounds: (0@0 extent: wid@ht2)
				color: (ht2 > (insHt//2+1) ifTrue: [c1] ifFalse: [c2]))
					borderWidth: 1; borderColor: spacer2 color.
	spacer1 setProperty: #dropZone toValue: true.
	spacer2 setProperty: #dropZone toValue: true.
	self privateAddMorph: spacer2 atIndex: (i+3 min: submorphs size+1).
	self fullBounds.  "Force layout prior to testing for cursor containment"

	"Maintain the drop target highlight -- highlight spacer if hand is in it."
	{spacer1. spacer2} do:
		[:spacer | (spacer containsPoint: localPt) ifTrue:
			[spacer color: self dropColor.
			"Ignore border color.  Maybe do it later.
			self borderColor = self dropColor
				ifTrue: [self borderColor: self stdBorderColor]"]].
	"If no submorph (incl spacers) highlighted, then re-highlight the block."
	"Ignore border color.  Maybe do it later.
	((self wantsDroppedMorph: insertion event: hand lastEvent) and:
		[(self submorphs anySatisfy: [:m | m containsPoint: localPt]) not])
			ifTrue: [self borderColor: self dropColor].
	"

	"Dragging a tile within a Block, if beside a tile, color it a dropzone"
	"Transcript show: localPt y printString; space; show: submorphs first top 
		printString; space; show: submorphs last top printString; cr."
	dc := self dropColor.
	1 to: ((ii+4 min: submorphs size) max: 1) do: [:ind | 
		each := submorphs at: ind.
		each isSyntaxMorph ifTrue: [
			localPt y >= each top 
				ifTrue: ["in this one or beyond"
					(localPt y < each bottom) 
						ifTrue: [(each submorphs anySatisfy: [:m | 
								m containsPoint: localPt])
							ifTrue: [each setDeselectedColor]
							ifFalse: [each color: dc]]
						ifFalse: [each color = dc ifTrue: [each setDeselectedColor]]]
				ifFalse: [each color = dc ifTrue: [each setDeselectedColor]]]].
