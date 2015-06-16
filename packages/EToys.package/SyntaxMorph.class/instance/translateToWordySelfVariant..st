alans styles
translateToWordySelfVariant: aString

	| lc |
	lc := aString asLowercase.
	lc = 'me' ifTrue: [^#selfWrittenAsMe].
	lc = 'my' ifTrue: [^#selfWrittenAsMy].
	lc = 'i''ll' ifTrue: [^#selfWrittenAsIll].
	lc = 'i''m' ifTrue: [^#selfWrittenAsIm].
	lc = 'this' ifTrue: [^#selfWrittenAsThis].
	^nil

