node to morph
changeBasicStyle

	self removeAllMorphs.
	self setProperty: #alansNewStyle toValue: self alansTest1 not.
	self methodNodeOuter: parseNode
