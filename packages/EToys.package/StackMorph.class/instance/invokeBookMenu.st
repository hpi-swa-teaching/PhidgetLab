menu
invokeBookMenu
	"Invoke the book's control panel menu."

	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Stack' translated.
	Preferences noviceMode
		ifFalse: [aMenu addStayUpItem].
	aMenu addList: {
		{'find...' translated.					#textSearch}.
		{'find via this template' translated.			#findViaTemplate}.
		{'show designations' translated. 			#showDesignationsOfObjects}.
		{'explain designations' translated.			#explainDesignations}.
		#-.
		{'previous card' translated. 				#goToPreviousCardInStack}.
		{'next card' translated. 				#goToNextCardInStack}.
		{'first card' translated. 				#goToFirstCardOfStack}.
		{'last card' translated. 				#goToLastCardOfStack}.
		{'go to card...' translated. 				#goToCard}.
		#-.
		{'add a card of this background' translated. 		#insertCard}.
		{'add a card of background...' translated.		#insertCardOfBackground}.
		{'make a new background...' translated. 		#makeNewBackground}.
		#-.
		{'insert cards from clipboard data' translated.		#addCardsFromClipboardData.	'Create new cards from a formatted string on the clipboard' translated}.
		{'insert cards from a file...' translated.		#addCardsFromAFile.		'Create new cards from data in a file' translated}.
		#-.
		{'instance variable order...' translated.		#changeInstVarOrder.		'Caution -- DANGER. Change the order of the variables on the cards' translated}.
		{'be defaults for new cards' translated. 		#beDefaultsForNewCards.		'Make these current field values be the defaults for their respective fields on new cards' translated}.
		    {'sort cards by...' translated.			#sortCards.			'Sort all the cards of the current background using some field as the sort key' translated}.
		#-.
		{'delete this card' translated. 			#deleteCard}.
		{'delete all cards *except* this one' translated.	#deleteAllCardsExceptThisOne}.
		#-.
		{'move card to front of stack' translated.		#makeCurrentCardFirstInStack}.
		{'move card to back of stack' translated.		#makeCurrentCardLastInStack}.
		{'move card one position earlier' translated.		#moveCardOnePositionEarlier}.
		{'move card one position later' translated.		#moveCardOnePositionLater}.
		#-.
		{'scripts for this background' translated.		#browseCardClass}.
		#-.
		{'debug...' translated.					#offerStackDebugMenu}.
		{'bookish items...' translated. 			#offerBookishMenu}}.

	aMenu addUpdating: #showingPageControlsString action: #toggleShowingOfPageControls.
	aMenu addUpdating: #showingFullScreenString action: #toggleFullScreen.

	aMenu popUpEvent: self world activeHand lastEvent in: self world
