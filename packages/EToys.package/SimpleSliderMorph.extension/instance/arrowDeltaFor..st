*Etoys-support
arrowDeltaFor: aGetter
	"Here just for testing the arrowDelta feature.  To test, re-enable the code below by commenting out the first line, and you should see the minVal slot of the slider go up and down in increments of 5 as you work the arrows on its readout tile in a freshly-launched Viewer or detailed watcher"
	
	true ifTrue: [^ super arrowDeltaFor: aGetter]. 
	
	^ (aGetter == #getMinVal)
		ifTrue:
			[5]
		ifFalse:
			[1]