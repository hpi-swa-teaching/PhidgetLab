events
intoWorld: aWorld

	super intoWorld: aWorld.
	aWorld
		when: #aboutToLeaveWorld
		send: #closeConnection
		to: self;
		when: #aboutToEnterWorld
		send: #refresh
		to: self.
	self refresh