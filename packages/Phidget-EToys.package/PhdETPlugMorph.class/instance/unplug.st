plugging
unplug

	self connector disconnectFrom: self.
	(self port) ifNotNil: [self port 
								setPortNumber: 0;
								changeColorAccordingTo: false].
	self
		plugged: false;
		connector: nil.