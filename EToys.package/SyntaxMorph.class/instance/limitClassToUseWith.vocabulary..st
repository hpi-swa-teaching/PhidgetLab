vocabulary
limitClassToUseWith: aValue vocabulary: aVocabulary 
	"Answer the most generic whose method should be shown in a selector pop-up in the receiver that is put up on behalf of aValue"

	(aValue isNumber) ifTrue: [^Number].
	"Ted: This hook allows you to intervene as suits your purposes here if you don't like the defaults."
	^aValue defaultLimitClassForVocabulary: aVocabulary