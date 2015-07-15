event handling
justDroppedInto: aMorph event: anEvent

    	self topRendererOrSelf assuredPlayer allOpenViewers isEmpty 
      	ifTrue: [[self createFlapAndHighlight] fork].