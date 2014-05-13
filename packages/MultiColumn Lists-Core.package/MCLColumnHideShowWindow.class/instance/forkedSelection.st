action
forkedSelection
	"Setup a morph with up to 3 choices based on the options passed in in the array.  Once the choices are made,
		generate a new instance of myself based on those selections."
	
	[self openWindow] fork.
	semaphore _ Semaphore new.
	semaphore wait.
	choices ifNil: [^nil].
^(choices select: [:morph| morph isChecked]) collect: [:morph| morph label]
