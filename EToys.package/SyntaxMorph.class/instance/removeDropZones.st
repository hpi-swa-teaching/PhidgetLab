insertion drop zones
removeDropZones
	"Remove the insertion drop-zone morphs."

	self submorphsDo:
		[:mm | (mm isMemberOf: BorderedMorph) ifTrue: [mm delete]].
