viewer values
kilogramm
	"Converts the sensor values into kilogramms using a cubic function. The function is generated from measured sensor values."
	
	| a b c kilogramms |
	a := 4.58 * (10 raisedTo: (-9)).
	b := -5.18 * (10 raisedTo: (-6)).
	c := 0.0019.
	kilogramms := (a * (self lastValue raisedTo: 3)) + (b * (self lastValue raisedTo: 2)).
	kilogramms := kilogramms + (c * self lastValue).
	^ kilogramms