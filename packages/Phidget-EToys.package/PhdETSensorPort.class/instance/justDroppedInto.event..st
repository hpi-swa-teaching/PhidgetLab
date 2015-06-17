event handling
justDroppedInto: aMorph event: anEvent

    	self topRendererOrSelf assuredPlayer allOpenViewers isEmpty 
      	ifTrue: [
			|flap|
            	flap := (self presenter viewMorph: self showFlap: false).
            	self highlightFlapThumbnail: flap].