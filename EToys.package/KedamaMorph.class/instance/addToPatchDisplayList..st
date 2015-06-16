setup
addToPatchDisplayList: p

	| a |
	a := patchesToDisplay copyWithout: p.
	patchesToDisplay := a copyWith: p.
