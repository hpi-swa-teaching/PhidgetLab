parts bin
initialize

	super initialize.
	"self image: (PhidgetImageLoader Instance load: self getName, '_off' asSymbol)."
	"value := self center."
	"speed := 0."
	"self 
		color: Color white;
		createAndAddIndicatorLine."
		