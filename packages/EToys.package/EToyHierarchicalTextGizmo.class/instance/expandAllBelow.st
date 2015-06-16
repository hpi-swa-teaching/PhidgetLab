as yet unclassified
expandAllBelow

	currentSelection withoutListWrapper withAllChildrenDo: [ :each |
		each setProperty: #showInOpenedState toValue: true
	].
	self changed: #getList.