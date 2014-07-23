testing
test02ifPolygonMorphExits

	self shouldnt: [self polygonMorph createLineFrom: 0@0 to: 1@1 color: Color black width: 1]
		raise: MessageNotUnderstood.