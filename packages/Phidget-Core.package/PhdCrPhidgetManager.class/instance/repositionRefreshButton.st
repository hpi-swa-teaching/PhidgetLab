private
repositionRefreshButton

	refreshButton ifNotNil: [
		refreshButton position:
			self topRight -
			( (refreshButton width + self paddingLeftRight) @ (self paddingTopBottom negated) ).
	].