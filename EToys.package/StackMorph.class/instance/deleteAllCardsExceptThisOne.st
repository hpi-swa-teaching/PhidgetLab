card access
deleteAllCardsExceptThisOne
	"Delete all cards except the current one"

	self privateCards size <= 1 ifTrue: [^ Beeper beep].
	(self confirm: 'Really delete ' translated, self privateCards size asString, ' card(s) and all of their data?' translated) ifTrue:
		[self privateCards: (OrderedCollection with: self currentCard)].