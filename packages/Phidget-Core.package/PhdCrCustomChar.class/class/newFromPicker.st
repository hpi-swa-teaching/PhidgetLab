accessing
newFromPicker

	| picker |
	picker := PhdCrCustomCharPicker new.
	
	picker
		when: #characterPicked
		send: #setCharAt:to:
		to: self;
		openInHand.