plug
createPlug

	plug := PhdETOutputPlugMorph new.
	plug port: self.
	plug openInWorld.
	self connectPlug.