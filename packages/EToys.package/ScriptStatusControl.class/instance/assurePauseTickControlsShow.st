initialization
assurePauseTickControlsShow
	"Add two little buttons that allow the user quickly to toggle between paused and ticking state"

	| colorSelector status |
	self beTransparent.
	(tickPauseWrapper isKindOf: TickIndicatorMorph) ifFalse:[
		"this was an old guy"
		tickPauseWrapper ifNotNil:[tickPauseWrapper delete].
		tickPauseWrapper := TickIndicatorMorph new.
		tickPauseWrapper on: #mouseDown send: #mouseDownTick:onItem: to: self.
		tickPauseWrapper on: #mouseUp send: #mouseUpTick:onItem: to: self.
		tickPauseWrapper setBalloonText:'Press to toggle ticking state. Hold down to set tick rate.' translated.
		self addMorphFront: tickPauseWrapper.
	].
	status := scriptInstantiation status.
	colorSelector := ScriptingSystem statusColorSymbolFor: status.
	tickPauseWrapper color: (Color perform: colorSelector) muchLighter.
	tickPauseWrapper stepTime: (1000 // scriptInstantiation tickingRate max: 0).
	tickPauseWrapper isTicking: status == #ticking.
	tickPauseButtonsShowing := true.