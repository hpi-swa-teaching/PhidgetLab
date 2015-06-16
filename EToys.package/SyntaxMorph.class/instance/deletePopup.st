pop ups
deletePopup

	self valueOfProperty: #myPopup ifPresentDo:
		[:panel | panel delete. self removeProperty: #myPopup]