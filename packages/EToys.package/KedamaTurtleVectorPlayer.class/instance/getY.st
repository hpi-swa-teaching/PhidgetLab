player commands
getY

	| yArray |
	exampler getGrouped ifFalse: [
		^ arrays at: 3.
	] ifTrue: [
		yArray := arrays at: 3.
		yArray size = 0 ifTrue: [^ exampler getY].
		^ yArray first.
	].
