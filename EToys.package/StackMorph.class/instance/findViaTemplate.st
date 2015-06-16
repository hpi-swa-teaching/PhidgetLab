menu
findViaTemplate
	| list pl cardInst |
	"Current card is the template.  Only search cards in this background. Look at cards directly (not allText). Key must be found in the same field as in the template.  HyperCard style (multiple starts of words).  
	Put results in a list, outside the stack."

	list := self templateMatches.
	list isEmpty ifTrue: [^ self inform: 'No matches were found.
Be sure the current card is mostly blank
and only has text you want to match.' translated]. 
	"put up a PluggableListMorph"
	cardInst := self currentCard.
	cardInst matchIndex: 0.	"establish entries"
	cardInst results at: 1 put: list.
	self currentPage setProperty: #myStack toValue: self.	"way to get back"

	pl := PluggableListMorph new
			on: cardInst list: #matchNames
			selected: #matchIndex changeSelected: #matchIndex:
			menu: nil "#matchMenu:shifted:" keystroke: nil.
	ActiveHand attachMorph: (self formatList: pl).
