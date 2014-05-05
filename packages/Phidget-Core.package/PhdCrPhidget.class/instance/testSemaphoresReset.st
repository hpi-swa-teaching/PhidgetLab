testing
testSemaphoresReset
	"Answer true if the semaphores are reset, false otherwise."

	id do: [ :byte | byte isZero ifFalse: [ ^ false ] ].
	^ true