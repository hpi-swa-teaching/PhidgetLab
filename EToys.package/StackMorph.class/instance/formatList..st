menu
formatList: pl
	| rr ff |
	"Turn this plugglable list into a good looking morph."

	pl color: Color transparent; borderWidth: 0.
	pl font: ((TextStyle named: #Palatino) fontOfSize: 14).
	pl toggleCornerRounding; width: 252; retractableOrNot; hResizing: #spaceFill.
	rr := (RectangleMorph new) toggleCornerRounding; extent: pl extent + (30@30).
	rr color: self currentPage color; fillStyle: (ff := self currentPage fillStyle copy).
	ff isGradientFill ifTrue: [
		rr fillStyle direction: (ff direction * self currentPage extent / rr extent) rounded.
		rr fillStyle origin: rr bounds origin].
	rr addMorph: pl.
	rr layoutPolicy: TableLayout new.
	rr layoutInset: 10@15; cellInset: 10@15; wrapDirection: #leftToRight.
	rr listCentering: #center; borderWidth: 5; borderColor: #raised.
	"Up and down buttons on left with arrows in a holder."
	"lb := (RectangleMorph new) color: transparent; borderWidth: 0."
	^ rr