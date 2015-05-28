initialize-open-close
closeAndRemoveMorph

	ETHandle class = PhdETPhidget ifTrue: [ETHandle delete].
	self close.

