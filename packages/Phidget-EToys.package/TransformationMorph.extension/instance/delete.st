*Phidget-EToys-drawing-override
delete
	
	(self submorphs) do: [:s | (s isKindOf: PhdETSensorPort) 
		ifTrue: [Transcript show: 'Want to delete sumoph'. s delete.]].
	super delete