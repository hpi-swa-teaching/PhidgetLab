accessing
setEventHandlers: enabled

	enabled ifTrue: [
		visibleMorph on: #mouseDown send: #mouseDown: to: self.
		visibleMorph on: #mouseStillDown send: #mouseStillDown: to: self.
		visibleMorph on: #mouseUp send: #mouseUp: to: self.
		visibleMorph on: #mouseEnter send: #mouseEnter: to: self.
		visibleMorph on: #mouseLeave send: #mouseLeave: to: self.
	] ifFalse: [
		#(mouseDown mouseStillDown mouseUp mouseEnter mouseLeave) do: [ :sel |
			visibleMorph on: sel send: nil to: nil
		].
	].
