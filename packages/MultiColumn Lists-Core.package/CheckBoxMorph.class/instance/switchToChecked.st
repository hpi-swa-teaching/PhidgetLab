actions
switchToChecked
	|topLeft|
	
	boolean _ true.
	self removeAllMorphs.
	topLeft _ (checkedMorph width + 2) @ 0.
	checkedMorph bounds: (checkedMorph bounds align: checkedMorph bounds topLeft with: self bounds topLeft).
	labelMorph bounds: (labelMorph bounds align: labelMorph bounds topLeft with: (self bounds topLeft + topLeft)).
	self addMorph: checkedMorph fullFrame: (LayoutFrame offsets: ((0@0) extent: checkedMorph extent)).
	self addMorph: labelMorph fullFrame: (LayoutFrame offsets: (topLeft extent: ((topLeft x + labelMorph width) @ (labelMorph height + 2)))).