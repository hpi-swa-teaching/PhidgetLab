other
handUserButtonDownTile
	"Hand the user a button-down tile, presumably to drop in the script"
	
	
	self currentHand attachMorph:
		(self presenter systemQueryPhraseWithActionString: '(Sensor anyButtonPressed)' labelled: 'button down?' translated)
	