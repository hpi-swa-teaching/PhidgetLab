updating view
reloadOpenedPhidgets
	"store the list of opened Phidgets to register and unregister attach and detach events for each phidget is that list."
	openedPhidgets do: [ :phidget |
		phidget removeActionsWithReceiver: self ].
	removeButtons ifNotEmpty: 
		[ removeButtons do: [ :button | button delete ]].
	
	openedPhidgets := PhdCrPhidgetManager allOpenedPhidgets.
	removeButtons := Array new: openedPhidgets size.
	openedPhidgets do: [ :phidget |
		phidget
			when: #Attach
			send: #refreshOpenedOnAttachDetach
			to: self;
			when: #Detach
			send: #refreshOpenedOnAttachDetach
			to: self.
		self createAndAddRemoveButtonFor: (openedPhidgets indexOf: phidget).
	]
	
	