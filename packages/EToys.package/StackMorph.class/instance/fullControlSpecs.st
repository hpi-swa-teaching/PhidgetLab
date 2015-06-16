page controls
fullControlSpecs
	"Answer specifications for the long form of iconic stack/book controls"

	^ #(
		spacer
		variableSpacer
		('-'			deleteCard					'Delete this card')
		spacer
		( '«'		goToFirstCardOfStack			'First card')
		spacer
		( '<' 		goToPreviousCardInStack		'Previous card')
		spacer
		('·'			invokeBookMenu 			'Click here to get a menu of options for this stack.')
		"spacer	('¶'			reshapeBackground  		'Reshape')	"

		spacer
		('§'			showDesignationsOfObjects 	'Show designations')
		spacer
		('>'			goToNextCardInStack			'Next card')
		spacer
		( '»'		goToLastCardOfStack			'Final card')
		spacer
		('+'			insertCard					'Add a new card after this one')
		variableSpacer
		('³'			fewerPageControls			'Fewer controls
(if shift key pressed,
deletes controls)')
)