private
createAndAddRemoveButtonFor: aPhidgetNumber
	| removeButton |
	removeButton := (SimpleButtonMorph newWithLabel: 'x')
		color: (Color r: 0.8 g: 0 b: 0);
		borderWidth: 1;
		borderColor: Color gray;
		target: (openedPhidgets at: aPhidgetNumber);
		actionSelector: #closeAndDeleteETPhidget;
		setBalloonText: 'Remove opened Phidget - e.g. if a Phidget is not shown';
		useRoundedCorners;
		position: openedList position + ((openedList width + 5) @ (aPhidgetNumber * 20));
		yourself.

	removeButtons at: aPhidgetNumber put: removeButton.
	self addMorph: removeButton.