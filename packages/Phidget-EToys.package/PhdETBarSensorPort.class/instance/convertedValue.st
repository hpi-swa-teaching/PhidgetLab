viewer values
convertedValue
	"Converts the sensor values into kilogramms using a cubic function"
	| a b c d  kilogramms |
	a := 4.58 * (10 raisedTo: (-9)).
	b := -5.18 * (10 raisedTo: (-6)).
	c := 0.0019.
	d := 0.0294.
	kilogramms := (a * (self lastValue raisedTo: 3)) + (b * (self lastValue raisedTo: 2)).
	kilogramms := kilogramms + (c * self lastValue) + d.
	^ kilogramms