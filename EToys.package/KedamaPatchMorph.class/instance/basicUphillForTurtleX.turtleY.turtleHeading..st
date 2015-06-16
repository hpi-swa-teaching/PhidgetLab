commands and slots
basicUphillForTurtleX: tX turtleY: tY turtleHeading: tH
	"Answer the heading the points in the direction of increasing value for the given patch variable. If there is no gradient, or if the turtle is outside the world bounds, answer the turtles current heading."

	| turtleX turtleY startX endX startY endY maxVal rowOffset thisVal maxValX maxValY |
	turtleX := tX truncated.
	turtleY := tY truncated.
	turtleX := turtleX max: 0.
	turtleY := turtleY max: 0.
	turtleX := turtleX min: form width - 1.
	turtleY := turtleY min: form height - 1.
	startX := turtleX - sniffRange max: 0.
	endX := (turtleX + sniffRange) min: (form width - 1).
	startY := (turtleY - sniffRange) max: 0.
	endY := (turtleY + sniffRange) min: (form height - 1).
	"form bits class == Bitmap ifFalse: [form unhibernate]."
	maxVal := form bits at: turtleY * form width + turtleX + 1.
	maxValX := nil.
	startY to: endY
		do: 
			[:y | 
			rowOffset := y * form width.
			startX to: endX
				do: 
					[:x | 
					thisVal := form bits at: rowOffset + x + 1.
					thisVal > maxVal 
						ifTrue: 
							[maxValX := x.
							maxValY := y.
							maxVal := thisVal]]].
	nil = maxValX ifTrue: [^ (90.0 - tH radiansToDegrees) \\ 360.0].
	^ (((maxValX - turtleX) @ (maxValY - turtleY)) degrees + 90.0) \\ 360.0
