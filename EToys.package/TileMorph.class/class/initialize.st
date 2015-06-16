class initialization
initialize
	"TileMorph readInArrowGraphics    -- call manually if necessary to bring graphics forward"
	"TileMorph initialize"

	UpdatingOperators := Dictionary new.
	UpdatingOperators at: #incr: put: #+.
	UpdatingOperators at: #decr: put: #-.
	UpdatingOperators at: #set: put: ''.
	self downPicture; upPicture; suffixPicture; retractPicture.
	SuffixArrowAllowance := 5 + self suffixPicture width + self retractPicture width.
	UpArrowAllowance := 10.
