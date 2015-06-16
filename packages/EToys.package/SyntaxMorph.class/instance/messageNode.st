accessing
messageNode
	"Return the enclosing messageNode that is the full message.  It has a receiver."

	^self orOwnerSuchThat: [:oo | oo receiverNode notNil]