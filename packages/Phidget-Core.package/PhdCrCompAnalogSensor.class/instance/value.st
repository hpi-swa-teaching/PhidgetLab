accessing
value
	"Gets the current value of the sensor (integer from 0 to 1000) and inverts it if nevessary."
	
	^ self invertIfNecessary: self baseValue