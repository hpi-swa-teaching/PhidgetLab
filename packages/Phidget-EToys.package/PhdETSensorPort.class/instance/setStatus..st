accessing
setStatus: aNumber

	| clippedSpeed |
	
	statusMorph value: aNumber.
	statusMorph speed: (self calcSpeed: aNumber).
	
	clippedSpeed := (self statusMorph speed // 2) + 500.
	(clippedSpeed < 0) ifTrue: [ clippedSpeed := 0 ].
	(clippedSpeed > 1000) ifTrue: [ clippedSpeed := 1000 ].
	"velocityMorph value: clippedSpeed."