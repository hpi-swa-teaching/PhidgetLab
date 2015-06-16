event handling
handlesMouseOverDragging: evt

	^ evt hand hasSubmorphs
		and: [evt hand firstSubmorph isSyntaxMorph]
