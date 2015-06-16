running
runIfClosing
	| result |
	(result := status == #closing) ifTrue:
		[player triggerScript: selector].
	^ result