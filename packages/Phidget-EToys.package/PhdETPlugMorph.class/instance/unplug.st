plugging
unplug

	self connector disconnectFrom: self.
	(self port) ifNotNil: [self port 
							setPortNumber: 0;
							makeGray].
	self
		plugged: false;
		connector: nil.