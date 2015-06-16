initialization
initialize
	"Initialize the receiver"

	super initialize.
	self layoutInset: 0.
	self minCellSize: (0 @ (Preferences standardEToysFont height rounded + 10))