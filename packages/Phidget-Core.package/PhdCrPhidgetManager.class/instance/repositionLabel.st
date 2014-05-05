private
repositionLabel

	label ifNotNil: [
		label position: self topLeft + (self paddingLeftRight @ self paddingTopBottom).
	].