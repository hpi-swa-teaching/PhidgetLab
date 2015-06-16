commands and slots
useLogDisplay: aBoolean

	displayType := aBoolean ifTrue: [#logScale] ifFalse: [#linear].
	self formChanged.
