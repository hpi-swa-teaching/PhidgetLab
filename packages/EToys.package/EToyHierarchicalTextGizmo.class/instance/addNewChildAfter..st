as yet unclassified
addNewChildAfter: aNodeOrNil

	currentSelection addNewChildAfter: aNodeOrNil.
	self changed: #getList.