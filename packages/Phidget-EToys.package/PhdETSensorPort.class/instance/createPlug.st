initialization
createPlug

	plug := PhdETSensorPlugMorph new.
	plug port: self.
	plug openInWorld.
	self connectPlug.