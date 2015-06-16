status control
presentTickingMenu
	"Put up a menu of status alternatives and carry out the request"
	| aMenu ticks item any |
	ticks := self tickingRate.
	ticks = ticks asInteger ifTrue:[ticks := ticks asInteger].
	aMenu := MenuMorph new defaultTarget: self.
	any := false.
	#(1 2 5 8 10 25 50 100) do:[:i | 
		item := aMenu addUpdating: nil target: self selector: #tickingRate: argumentList: {i}.
		item contents:
			((ticks = i) ifTrue:[ any := true. '<on>', i printString]
					ifFalse:['<off>', i printString])].
	item := aMenu addUpdating: nil target: self selector: #typeInTickingRate argumentList: #().
	item contents: (any ifTrue:['<off>'] ifFalse:['<on>']), 'other...' translated.
	aMenu addTitle: ('Ticks (now: {1}/sec)' translated format:{ticks}).
	aMenu  popUpEvent: self currentEvent in: self currentWorld