layout
addNoiseString: aNoiseString emphasis: anInteger

	self alansTest1 ifFalse: [^self].
	^(self addColumn: #keyword1 on: nil)
		layoutInset: 1;
		addMorphBack: ((self noiseStringMorph: aNoiseString)  emphasis: anInteger)
