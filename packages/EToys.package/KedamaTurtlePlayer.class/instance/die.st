commands and slots
die
	"Delete this turtle at the end of the current cycle. The turtle will finish running all demons for the current cycle before it dies."

	world deleteTurtleID: self getScalarWho of: self class.
