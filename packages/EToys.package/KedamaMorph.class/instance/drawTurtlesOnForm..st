drawing
drawTurtlesOnForm: aForm

	turtlesToDisplay do: [:exampler |
		(self isVisible: exampler) ifTrue: [
			turtlesDictSemaphore critical: [
				exampler turtles drawOn: aForm.
			].
		].
	].
