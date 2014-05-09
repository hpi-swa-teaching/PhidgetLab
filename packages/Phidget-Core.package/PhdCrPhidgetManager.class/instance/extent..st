updating view
extent: aPoint

	| newExtent newWidth newHeight |
	
	newWidth := aPoint x max: self minWidth.
	newHeight := aPoint y max: self minHeight.
	newExtent := newWidth @ newHeight.
	super extent: newExtent.
	
	self repositionAll.