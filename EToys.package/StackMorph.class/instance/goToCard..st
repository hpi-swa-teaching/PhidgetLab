card access
goToCard: destinationCard
	"Install the indicated destinationCard as the current card in the receiver.  Any viewer currently open on the current card will get retargeted to look at the new one."

	| aBackground existingCard oldViewers |
	destinationCard == self currentCard ifTrue: [^ self].
	self currentPlayerDo:
		[:aPlayer | aPlayer runAllClosingScripts].   "Like HyperCard 'on closeCard'"

	aBackground := self backgroundWithCard: destinationCard.
	existingCard := aBackground currentDataInstance.
	oldViewers := existingCard ifNil: [#()] ifNotNil: [existingCard allOpenViewers].

	aBackground installAsCurrent: destinationCard.
	aBackground setProperty: #myStack toValue: self.	"pointer cardMorph -> stack"

	aBackground ~~ currentPage ifTrue:
		[self goToPageMorph: aBackground runTransitionScripts: false].
	self currentPlayerDo:
		[:aPlayer | aPlayer runAllOpeningScripts] .  "Like HyperCard 'on opencard'"

	oldViewers do: [:aViewer | aViewer retargetFrom: existingCard to: destinationCard]