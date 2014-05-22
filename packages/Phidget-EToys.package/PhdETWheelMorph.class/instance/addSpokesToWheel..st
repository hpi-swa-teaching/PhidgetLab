initialization
addSpokesToWheel: aCircle
	"add a number of spokes to the currently still empty wheel.
	start point is the center of the circle, the end point is calculated for every spoke."
	
	| radius line start end angle step |
	self class numberOfSpokes == 0 ifTrue: [ ^ self ].
	
	radius := aCircle width asFloat / 2.0.
	angle := 0.0.
	step := Float pi * 2 / self class numberOfSpokes.
	start := aCircle center.
	
	[ angle <= (Float pi * 2.0) ] whileTrue: [
		end := start - ( (angle cos * radius) @ (angle sin * radius) ).
		line := PhidgetPolygonMorph
			createLineFrom: start
			to: end
			color: Color black
			width: 1.
		aCircle addMorph: line.
		angle := angle + step ].
	