card access
goToCard
	"prompt the user for an ordinal number, and use that as a basis for choosing a new card to install in the receiver"

	| reply index |
	reply := UIManager default request: 'Which card number? ' translated initialAnswer: '1'.
	reply isEmptyOrNil ifTrue: [^ self].
	((index := reply asNumber) > 0 and: [index <= self privateCards size])
		ifFalse: [^ self inform: 'no such card'].
	self goToCard: (self privateCards at: index)