events
whenKeyValue: keyValue isPressedSend: action to: target
	"Let the controller (or something else) intercept keypresses for various reasons.  example:
		self whenKeyValue: 13 isPressedSend: #delete to: self
	will cause an enter key pressed to close this morph."
	"NOTE: the method this calls needs to return True or False.  If it returns true, it will NOT process normal key activity.  In this way, it is possible to override the standard navigation keys (up, down, pageUp, etc)."

	(keyActions at: keyValue ifAbsentPut: [OrderedCollection new]) addLast: (Array with: action with: target)