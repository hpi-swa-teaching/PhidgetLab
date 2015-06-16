accessing
literal: anObject
	"Set the receiver's literal as indicated"
	self flag: #yo.

	literal := anObject asSymbol.
	self updateLiteralLabel.
"
	key := Vocabulary eToyVocabulary translationKeyFor: literal.
	key isNil ifFalse: [literal := key].
"
	self flag: #deferred.  "The below formerly was necessary but now is problematical, leading to low-space condition etc.  May need to revisit, since as I comment this out now I am uncertain what if anything this may break"
	"self labelMorph informTarget"

