updating
createPlug

	plug := PhdETInputPlugMorph new.
	plug port: self.
	plug openInWorld.
	self connectPlug.