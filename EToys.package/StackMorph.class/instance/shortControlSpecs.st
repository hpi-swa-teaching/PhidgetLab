page controls
shortControlSpecs
	"Answer specficiations for the shorter form of stack controls"

	^ #(
		spacer
		variableSpacer
		( '<'		goToPreviousCardInStack		'Previous card')
		spacer
		('·'		invokeBookMenu 			'Click here to get a menu for this stack.')
		spacer
		('>'		goToNextCardInStack			'Next card')
		variableSpacer
		('³'	showMoreControls				'More controls
(if shift key pressed,
deletes controls)'))