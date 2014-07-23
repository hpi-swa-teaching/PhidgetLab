initialize-open-close
initialize
	"Initialise the callbacks that are used in every Phidget.
	Every subclass should call super initialise or initialise the callbacks by their own.
	In addition mark phidget as closed and create the representation in the plugin using a primitive."
	
	super initialize.
	
	semaphores := Dictionary new.
	mutexes := Dictionary new.
	userProcessBlocks := Dictionary new.
	opened := false.
	serialNumber := -1.
	
	self class knownCallbacks do: [ :name | 
		semaphores add: name -> Semaphore new.
		mutexes add: name -> Monitor new.	
		userProcessBlocks add: name -> [] ].
	
	id := self getNewId.