accessing
changeSensitivity
	| aNumber |
	
	self axes size = 0 ifTrue: [^ 0.0].
	self axes do: [:axis | aNumber := aNumber + axis sensitivity].
	^ aNumber asFloat / self axes size asFloat