event handling
wantsKeyboardFocusFor: aSubmorph 
	^ type == #literal
		and: [(literal isKindOf: Boolean) not]