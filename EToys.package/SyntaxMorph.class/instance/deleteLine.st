pop ups
deleteLine
	| temp |
	temp := owner.
	self deletePopup.
	self delete.
	temp setSelection: nil.
	temp acceptIfInScriptor.