accessing
receiverType
	owner
		ifNil: [^ nil].
	owner submorphs size > 0
		ifFalse: [^ nil].
	^ (owner submorphs first respondsTo: #type)
		ifTrue: [owner submorphs first type]