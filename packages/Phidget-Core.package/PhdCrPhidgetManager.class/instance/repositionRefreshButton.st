private
repositionRefreshButton

	refreshButton ifNotNil: [
		refreshButton position:
			self topRight -
			( (refreshButton width + self paddingLeft) @ (self paddingTopBottom negated) ).
	].