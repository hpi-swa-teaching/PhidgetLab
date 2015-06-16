customevents-status control
defineNewEvent
	| newEventName newEventHelp |
	"Prompt the user for the name of a new event and install it into the custom event table"
	newEventName := FillInTheBlankMorph request: 'What is the name of your new event?'.
	newEventName isEmpty ifTrue: [ ^self ].
	newEventName := newEventName asSymbol.
	(ScriptingSystem customEventStati includes: newEventName) ifTrue: [
		self inform: 'That event is already defined.'. ^self ].
	newEventHelp := FillInTheBlankMorph request: 'Please describe this event:'.
	ScriptingSystem addUserCustomEventNamed: newEventName help: newEventHelp.