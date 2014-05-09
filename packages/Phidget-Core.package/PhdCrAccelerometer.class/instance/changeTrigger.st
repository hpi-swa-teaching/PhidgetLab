accessing
changeTrigger 
	| aNumber |
	
	self axes size = 0 ifTrue: [^ 0.0].
	self axes do: [:axis | aNumber := aNumber + axis changeTrigger].
	^ aNumber asFloat / self axes size asFloat