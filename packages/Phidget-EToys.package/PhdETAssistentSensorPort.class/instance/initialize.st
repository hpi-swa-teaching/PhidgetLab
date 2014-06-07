initialization
initialize

	super initializeWith: PhdETAssistentSensorMorph new.
	statusMorph master: self master.
	"velocityMorph hide."
	numberString position: (numberString position)