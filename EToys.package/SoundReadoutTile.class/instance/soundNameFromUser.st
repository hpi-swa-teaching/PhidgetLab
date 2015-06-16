arrows
soundNameFromUser
	"Obtain a sound from the user.  Exclude the items designated as being discouraged, except that if the current selection is one of those, show it anyway"

	| choices |
	choices := self soundChoices.
	^ UIManager default 
		chooseFrom: (choices collect: [:t | t translated]) 
		values: self soundChoices
		title: 'Sounds' translated