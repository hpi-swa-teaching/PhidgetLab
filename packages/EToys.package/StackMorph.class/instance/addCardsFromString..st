background
addCardsFromString: aString
	"Using the current background, add cards from a string, which is expected be tab- and return-delimited.  The data are in each record are expected to be tab-delimited, and to occur in the same order as the instance variables of the current-background's cards "

	self addCardsFromString: aString slotNames: self currentCard slotNames
 
