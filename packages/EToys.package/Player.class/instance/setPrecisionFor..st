slots-user
setPrecisionFor: slotName 
	"Set the precision for the given slot name"

	| aList reply aGetter places |
	aGetter := slotName asGetterSelector.
	places := Utilities 
				decimalPlacesForFloatPrecision: (self defaultFloatPrecisionFor: aGetter).
	aList := #('0' '1' '2' '3' '4' '5' '6').
	reply := UIManager default
		chooseFrom: aList
		values: (aList collect: [:m | m asNumber])
		title: ('How many decimal places? (currently {1})' translated
						format: {places}).
	reply ifNotNil: 
			[(self slotInfo includesKey: slotName) 
				ifTrue: 
					["it's a user slot"

					(self slotInfoAt: slotName) 
						floatPrecision: (Utilities floatPrecisionForDecimalPlaces: reply).
					self class allInstancesDo: 
							[:anInst | | val | 
							reply = 0 
								ifFalse: 
									[((val := anInst instVarNamed: slotName asString) isInteger) 
										ifTrue: [anInst instVarNamed: slotName asString put: val asFloat]].
							anInst updateAllViewers]]
				ifFalse: 
					["it's specifying a preference for precision on a system-defined numeric slot"

					self noteDecimalPlaces: reply forGetter: aGetter.
					self updateAllViewers]]