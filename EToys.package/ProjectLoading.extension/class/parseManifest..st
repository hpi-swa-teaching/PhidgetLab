*etoys
parseManifest: aString

	| dict line index key value aStream |
	aStream := aString readStream.
	dict := Dictionary new.
	[(line := aStream nextLine) notNil] whileTrue: [
		index := line indexOf: $:.
		index > 0 ifTrue: [
			key := line copyFrom: 1 to: index - 1.
			value := (line copyFrom: index + 1 to: line size) withBlanksTrimmed.
			dict at: key put: value.
		].
	].
	^ dict.