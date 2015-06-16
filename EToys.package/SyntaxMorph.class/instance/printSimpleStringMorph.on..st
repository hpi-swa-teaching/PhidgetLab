printing
printSimpleStringMorph: aMorph on: strm

	| trialContents |

	(aMorph hasProperty: #wordyVariantOfSelf) ifTrue: [
		strm nextPutAll: 'self '.
		strm nextPutAll: ((self translateToWordySelfVariant: aMorph contents) ifNil: [^self]).
		^self
	].
	(aMorph hasProperty: #noiseWord) ifFalse: [
		trialContents := self cleanUpString: aMorph.
		strm nextPutAll: trialContents
	].
