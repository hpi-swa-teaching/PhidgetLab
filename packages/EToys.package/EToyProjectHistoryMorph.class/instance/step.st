stepping and presenter
step

	changeCounter = ProjectHistory changeCounter ifTrue: [^self].
	self rebuild.
	