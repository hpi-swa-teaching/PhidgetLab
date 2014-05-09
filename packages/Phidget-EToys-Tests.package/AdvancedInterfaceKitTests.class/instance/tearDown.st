as yet unclassified
tearDown

	"It is very important to delete the testing instances immediately, otherwise it can cause VM crashes!"
	PhdETAdvancedInterfaceKit allInstances do: [ :i|i delete].
	SmalltalkImage current garbageCollect.
	super tearDown