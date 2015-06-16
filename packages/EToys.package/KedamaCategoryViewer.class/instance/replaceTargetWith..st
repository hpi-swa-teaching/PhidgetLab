support
replaceTargetWith: player

	self submorphs allButFirst do: [:m |
		(m isMemberOf: ViewerLine) ifFalse: [self halt].
		(#(#systemScript #userScript) includes: m entryType) ifTrue: [
			m replacePlayerWith: player.
		].
		(#(#systemSlot #userSlot) includes: m entryType) ifTrue: [
			m replacePlayerInReadoutWith: player.
		].
	].
