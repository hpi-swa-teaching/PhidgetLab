running
runIfOpening
	| result |
	(result := status == #opening) ifTrue:
		[player triggerScript: selector].
	^ result