*Etoys
arrowHeadForArrowSpec: anArrowSpec
	"Put an arrowhead on the previous pen stroke"
"
	 | pen aPoint |
	aPoint := Point fromUser.
	pen := Pen new.
	20 timesRepeat: [pen turn: 360//20; go: 20; arrowHeadForArrowSpec: aPoint].
"


	penDown ifTrue:
		[self arrowHeadFrom: (direction degreeCos @ direction degreeSin) * -40 + location 
			to: location
			arrowSpec: anArrowSpec]