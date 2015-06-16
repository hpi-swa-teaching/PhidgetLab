alans styles
translateFromWordySelfVariant: key

	#selfWrittenAsMe == key ifTrue: [^'me'].
	#selfWrittenAsMy == key ifTrue: [^'my'].
	#selfWrittenAsIll == key ifTrue: [^'I''ll'].
	#selfWrittenAsIm == key ifTrue: [^'I''m'].
	#selfWrittenAsThis == key ifTrue: [^'this'].
	^nil

