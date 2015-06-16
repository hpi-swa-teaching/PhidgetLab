accessing
labelMorph
	^ submorphs detect: [:m | m isKindOf: StringMorph] ifNone: [nil].