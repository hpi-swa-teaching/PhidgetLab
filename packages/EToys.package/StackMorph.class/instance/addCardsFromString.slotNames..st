background
addCardsFromString: aString slotNames: slotNames 
	"Using the current background, add cards from a string, which is expected be tab- and return-delimited"

	| count |
	count := 0.
	aString asString linesDo: 
			[:aLine | 
			aLine notEmpty 
				ifTrue: 
					[count := count + 1.
					self 
						insertCardOfBackground: self currentPage
						withDataFrom: aLine
						forInstanceVariables: slotNames]].
	self inform: count asString , ' card(s) added' translated