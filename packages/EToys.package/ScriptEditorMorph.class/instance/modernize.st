other
modernize
	"If the receiver appears to date from the past, try to fix it up"
	
	Preferences universalTiles ifFalse:
		[(self isTextuallyCoded and: [self showingMethodPane not]) ifTrue:
			["Fix up old guys that  are not showing the code in place"
			self showSourceInScriptor]]