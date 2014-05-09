accessing
resetAllCustomChars
	"Reset all stored custom characters to zero."
	
	customChars := Array new: 8.
	1 to: 8 do: [ :i | 
		customChars at: i put: (PhdCrCustomChar newWith: 0 and: 0). 
		self setCustomCharAt: i to: (customChars at: i) ].