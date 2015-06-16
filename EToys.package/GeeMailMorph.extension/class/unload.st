*etoys-customevents-user events
unload
	ScriptingSystem removeCustomEventNamed: #scrolledIntoView for: self.
	ScriptingSystem removeCustomEventNamed: #scrolledOutOfView for: self.