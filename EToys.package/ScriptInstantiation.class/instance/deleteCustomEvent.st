customevents-status control
deleteCustomEvent
	| userEvents eventName |
	userEvents :=  ScriptingSystem userCustomEventNames.
	eventName := UIManager default 
		chooseFrom: userEvents 
		values: userEvents 
		title: 'Remove which event?'.
	eventName ifNotNil: [ ScriptingSystem removeUserCustomEventNamed: eventName ].
	self class allSubInstancesDo: [ :ea | ea status = eventName ifTrue: [ ea status: #normal ]]