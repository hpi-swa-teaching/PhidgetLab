initialize-release
registerEvents

	"when attaching/detaching, update attach list"
	PhdCrPhidgetManager
		when: #AttachEvent
		send: #refreshAttached
		to: self.
	PhdCrPhidgetManager
		when: #DetachEvent
		send: #refreshAttached
		to: self.
	
	"when opening/closing only refresh opened list"
	PhdCrPhidgetManager
		when: #openedPhidgetsListChangedEvent
		send: #refreshOpened
		to: self.