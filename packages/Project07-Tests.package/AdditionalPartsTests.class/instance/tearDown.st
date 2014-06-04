running
tearDown 
	PhdETAdvancedInterfaceKit allInstances do: [ :i|i delete].
	SmalltalkImage current garbageCollect.
	super tearDown