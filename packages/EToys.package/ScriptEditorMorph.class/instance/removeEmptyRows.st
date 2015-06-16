private
removeEmptyRows
	submorphs copy do: [:m |
		(m isAlignmentMorph and: [m submorphCount = 0])
			ifTrue: [m delete]].
self flag: #arNote. "code below lead to large and unnecessary recomputations of layouts; without it things just fly"
"	self fullBounds.
	self layoutChanged."

	self flag: #noteToJohn.  "Screws up when we have nested IFs.  got broken in 11/97 when you made some emergency fixes for some other reason, and has never worked since...  Would be nice to have a more robust reaction to this!"
"
	self removeEmptyLayoutMorphs.

	spacer := LayoutMorph new extent: 10@12.
	spacer vResizing: #rigid.
	self privateAddMorph: spacer atIndex: self indexForLeadingSpacer.

	spacer := LayoutMorph new  extent: 10@12.
	spacer vResizing: #rigid.
	self privateAddMorph: spacer atIndex: (submorphs size + 1).

	self fullBounds; layoutChanged."
