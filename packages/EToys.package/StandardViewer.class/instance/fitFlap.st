initialization
fitFlap
	(owner notNil and:[owner isFlap]) ifTrue:[
		owner width < self fullBounds width ifTrue:[
			owner assureFlapWidth: self fullBounds width + 25.
		].
	].