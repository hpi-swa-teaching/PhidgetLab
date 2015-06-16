customevents-status control
status: newStatus 
	"Set the receiver's status as indicated"

	| stati actualMorph |
	actualMorph := player costume renderedMorph.

	"standard (EventHandler) events"
	stati := ScriptingSystem standardEventStati.
	(stati includes: status) 
		ifTrue: 
			[actualMorph 
				on: status
				send: nil
				to: nil
			"remove old link in event handler"].
	(stati includes: newStatus) 
		ifTrue: 
			[actualMorph 
				on: newStatus
				send: selector
				to: player.
			"establish new link in evt handler"
			player assureNoScriptOtherThan: self hasStatus: newStatus].

	"user custom events are triggered at the World, while system custom events are triggered on individual Morphs."
	self removeEventTriggersForMorph: actualMorph.
	stati := ScriptingSystem customEventStati.
	(stati includes: newStatus) 
		ifTrue: 
			[(ScriptingSystem userCustomEventNames includes: newStatus) 
				ifTrue: 
					[self currentWorld 
						when: newStatus
						send: #triggerScript:
						to: player
						withArguments: { 
								selector}]
				ifFalse: 
					[actualMorph when: newStatus
						evaluate: (MessageSend 
								receiver: player
								selector: #triggerScript:
								arguments: { 
										selector})]].
	status := newStatus.
	self pausedOrTicking ifTrue: [lastTick := nil].
	self flag: #arNote.	"this from fall 2000"
	self flag: #workaround.	"Code below was in #chooseTriggerFrom: which did not reflect status changes from other places (e.g., the stepping/pause buttons). It is not clear why this is necessary though - theoretically, any morph should step when it has a player but alas! something is broken and I have no idea why and where."

	"14 feb 2001 - bob - I reinstated this after alan noticed that a newly drawn car would not go until you picked it up and dropped it. The reason is that unscripted players have #wantSteps ^false. If a morph enters the world with an unscripted player and then acquires a scripted player, that would be a good time to change, but this will work too"
	status == #ticking 
		ifTrue: 
			[player costume isStepping ifFalse: [player costume arrangeToStartStepping]]