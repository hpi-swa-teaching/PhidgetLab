initialization
initialize

	super initialize.
	dimensions := self class defaultDimensions.  "dimensions of this StarSqueak world in patches"
	wrapX := dimensions x asFloat.
	wrapY := dimensions y asFloat.
	pixelsPerPatch := 2.
	super extent: dimensions * pixelsPerPatch.
	self assuredPlayer assureUniClass.
	self clearAll.  "be sure this is done once in case setup fails to do it"
	autoChanged := true.
	self leftEdgeMode: #wrap.
	self rightEdgeMode: #wrap.
	self topEdgeMode: #wrap.
	self bottomEdgeMode: #wrap.

	turtlesDictSemaphore := Semaphore forMutualExclusion.
