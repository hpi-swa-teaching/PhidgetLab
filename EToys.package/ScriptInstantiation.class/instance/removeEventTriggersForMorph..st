customevents-status control
removeEventTriggersForMorph: actualMorph 
	"user custom events are triggered at the World, while system custom events are triggered on individual Morphs."

	actualMorph removeActionsSatisfying: 
			[:action | 
			action receiver == player and: 
					[(#(#doScript: #triggerScript:) includes: action selector) 
						and: [action arguments first == selector]]]
		forEvent: status.
	self currentWorld removeActionsSatisfying: 
			[:action | 
			action receiver == player and: 
					[(#(#doScript: #triggerScript:) includes: action selector) 
						and: [action arguments first == selector]]]
		forEvent: status