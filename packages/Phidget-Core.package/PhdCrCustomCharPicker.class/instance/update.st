updating
update
	"Sets the states of my pixels depending on my values."

	| upper lower |	
	upper := customChar upper.
	lower := customChar lower.
	
	1 to: 20 do: [ :i | 
		(upperPixel at: i) setStateQuiet: upper \\ 2.
		(lowerPixel at: i) setStateQuiet: lower \\ 2.
		upper := upper // 2.
		lower := lower // 2 ].
	
	self triggerEvent: #characterPicked withArguments: {index. self getCustomChar}.