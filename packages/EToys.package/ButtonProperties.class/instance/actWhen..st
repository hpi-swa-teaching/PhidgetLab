accessing
actWhen: condition

	(#(buttonDown mouseDown) includes: condition) ifTrue: [ actWhen := #mouseDown ].
	(#(buttonUp mouseUp) includes: condition) ifTrue: [ actWhen := #mouseUp ].
	(#(whilePressed mouseStillDown) includes: condition) ifTrue: [ actWhen := #mouseStillDown ].
	self setEventHandlers: true.