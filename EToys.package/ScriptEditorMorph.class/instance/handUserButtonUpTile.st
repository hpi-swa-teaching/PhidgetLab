other
handUserButtonUpTile
	"Hand the user a button-up tile, presumably to drop in the script"
	
	
	self currentHand attachMorph:
		(self presenter systemQueryPhraseWithActionString: '(Sensor noButtonPressed)' labelled: 'button up?' translated)
	