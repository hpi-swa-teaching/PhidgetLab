updating
pixelChanged

	customChar := self getCustomChar.
	
	self triggerEvent: #characterPicked withArguments: {index. self getCustomChar}.