alans styles
fontToUseForSpecialWord: aString

	^(#('Yes' 'No' 'Test') includes: aString) ifTrue: [
		(StrikeFont familyName: 'Helvetica' size: 14)
	] ifFalse: [
		nil	"(StrikeFont familyName: 'ComicBold' size: 16)"
	]