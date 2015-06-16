drawing
drawOn: aCanvas
	self setDefaultContentsIfNil.
	aCanvas paragraph: self paragraph bounds: bounds color: color.
