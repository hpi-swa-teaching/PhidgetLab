private
repositionLabel

	label ifNotNil: [
		label position: self topLeft + (self paddingLeft @ self paddingTopBottom).
	].