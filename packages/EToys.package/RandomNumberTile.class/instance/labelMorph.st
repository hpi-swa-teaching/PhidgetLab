accessing
labelMorph
	^ submorphs detect: [:m | m isKindOf: UpdatingStringMorph] ifNone: [nil].