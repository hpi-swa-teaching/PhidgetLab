A book that is very much like a HyperCard stack.  

Each book page represents a different background.  The page stays while different cards are projected onto it.  
	The data for a single card is stored in a CardPlayer.  There is a list of objects that only appear on this card (privateMorphs) and the card-specific text to be inserted into the background fields.

Item					How it is stored
a background			a page of the StackMorph
a card					data is in an instance of a subclass of CardPlayer.
						A list of CardPlayers is in the 'cards' inst var of the StackMorph.
a background field		a TextMorph on a page of the StackMorph
a background picture	a morph of any kind on a page of the StackMorph
script for bkgnd button		method in Player.  Button is its costume.
text in a background field		value of inst var 'field1' in a CardPlayer.
								(The CardPlayer is also pointed at by the #cardInstance 
								property of the bkgnd field (TextMorph))
text in a card field		in the TextMorph in privateMorphs in the CardPlayer.
picture on a card		a morph of any kind in privateMorphs in the CardPlayer.
script for card button	method in the CardPlayer.  Button is its costume.

See VariableDock.