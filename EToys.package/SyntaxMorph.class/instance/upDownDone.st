pop ups
upDownDone

	(self nodeClassIs: LiteralNode) ifTrue:
		[self acceptSilently.  "Final compilation logs source"
		self removeProperty: #timeOfLastTick;
			removeProperty: #currentDelay].
