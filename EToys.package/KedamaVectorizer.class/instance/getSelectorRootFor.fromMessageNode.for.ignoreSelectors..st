player and selector look up
getSelectorRootFor: receiver fromMessageNode: aMessageNode for: obj ignoreSelectors: ignoreSelectors

	| val |
	root := nil.
	self getSelectorFor: receiver fromMessageNode: aMessageNode for: obj ifFoundDo: [:sel | root := sel] ignoreSelectors: ignoreSelectors.
	val := root.
	root := nil.
	^ val.
