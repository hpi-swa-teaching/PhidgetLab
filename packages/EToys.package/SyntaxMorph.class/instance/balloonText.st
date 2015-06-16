accessing
balloonText

	^(('Value: ',(self getCurrentValue ifNil: [^nil])) 
		withNoLineLongerThan: 35) truncateWithElipsisTo: 300