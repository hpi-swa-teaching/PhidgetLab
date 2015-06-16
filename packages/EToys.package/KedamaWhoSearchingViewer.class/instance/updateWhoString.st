support
updateWhoString

	(self outerViewer restrictedWho = 0) ifTrue: [
		self rawSearchString: ''.
		self changed: #searchString.
	].
