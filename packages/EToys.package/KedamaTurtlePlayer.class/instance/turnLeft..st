commands and slots
turnLeft: degrees
	"Turn left by the given number of degrees."

	self heading: (self heading - degrees).
