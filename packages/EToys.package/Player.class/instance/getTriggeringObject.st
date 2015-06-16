customevents-custom events
getTriggeringObject
	"Answer the Player that is triggering the current script,
	or the default UnscriptedPlayer if none."

	| rcvr |
	rcvr := GetTriggeringObjectNotification signal.

	^rcvr ifNil: [ self costume presenter standardPlayer ]
		ifNotNil: [ rcvr isMorph
				ifTrue: [ rcvr assuredPlayer ]
				ifFalse: [ rcvr ]]