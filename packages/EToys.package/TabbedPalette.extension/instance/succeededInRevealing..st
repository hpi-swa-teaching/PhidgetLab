*Etoys-support
succeededInRevealing: aPlayer
	| result |
	result := super succeededInRevealing: aPlayer.
	result ifTrue:
		["BookMorph code will have called goToPageNumber:; here, we just need to get the tab selection right here"
		self selectTabOfBook: self currentPalette].
	^ result