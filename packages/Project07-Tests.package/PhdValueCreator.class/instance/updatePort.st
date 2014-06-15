mocking
updatePort

	ports ifNotNil: 
		[ports do: 
			[ :port | port update]].