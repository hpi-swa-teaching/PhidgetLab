accessing
getCustomChar
	"Calculates and returns the value of the custom character depending on the state of the pixel."

	| upper lower |
	upper := 0.
	lower := 0.
	
	1 to: 20 do: [ :i |
		upper := upper + (((upperPixel at: i) getState) * (2 raisedTo: (i - 1))).
		lower := lower + (((lowerPixel at: i) getState) * (2 raisedTo: (i - 1))) ].
	
	^ PhdCrCustomChar newWith: upper and: lower