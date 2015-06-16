primitives
primEvaporate: aBitmap rate: rate
	"Evaporate the integer values of the source Bitmap at the given rate, an integer between 0 and 1024, where 1024 is a scale factor of 1.0 (i.e., no evaporation). That is, replace each integer element v with (rate * v) / 1024."

	<primitive: 'primitiveEvaporateRate' module: 'StarSqueakPlugin'>
	1 to: aBitmap size do: [:i |
		aBitmap at: i put: (((aBitmap at: i) * rate) bitShift: -10)].
