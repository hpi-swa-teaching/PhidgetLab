alans styles
noiseStringMorph: aNoiseString

	| sMorph |

	sMorph := self aSimpleStringMorphWith: aNoiseString.
	sMorph 
		font: (self fontToUseForSpecialWord: aNoiseString); 
		setProperty: #noiseWord toValue: true.

	^sMorph
