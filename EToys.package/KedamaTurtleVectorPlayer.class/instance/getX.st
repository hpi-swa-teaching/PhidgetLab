player commands
getX

	| xArray |
	exampler getGrouped ifFalse: [
		^ arrays at: 2.
	] ifTrue: [
		xArray := arrays at: 2.
		xArray size = 0 ifTrue: [^ exampler getX].
		^ xArray first.
	].
