commands and slots
turnRight: degrees
	"Turn right by the given number of degrees."

	self heading: (self heading + degrees).
