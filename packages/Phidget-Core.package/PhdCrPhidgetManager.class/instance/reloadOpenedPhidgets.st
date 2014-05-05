updating view
reloadOpenedPhidgets
	"store the list of opened Phidgets to register and unregister attach and detach events for each phidget is that list."

	openedPhidgets do: [ :phidget |
		phidget removeActionsWithReceiver: self ].
	
	openedPhidgets := PhdCrPhidgetManager allOpenedPhidgets.
	openedPhidgets do: [ :phidget |
		phidget
			when: #Attach
			send: #refreshOpenedOnAttachDetach
			to: self;
			when: #Detach
			send: #refreshOpenedOnAttachDetach
			to: self ].
	
	