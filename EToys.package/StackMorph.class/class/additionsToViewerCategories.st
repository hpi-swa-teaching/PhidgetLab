scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ # ((#'stack navigation'
			((command goToNextCardInStack 'Go to the next card')
			(command goToPreviousCardInStack  'Go to the previous card')
			(command goToFirstCardInBackground 'Go to the first card of the current background')
			(command goToFirstCardOfStack 'Go to the first card of the entire stack')
			(command goToLastCardInBackground 'Go to the last card of the current background')
			(command goToLastCardOfStack 'Go to the last card of the entire stack')
			(command deleteCard 'Delete the current card')
			(command insertCard 'Create a new card')
			(slot cardNumber 'The ordinal number of the current card' Number readWrite Player getCardNumber Player setCardNumber:))))