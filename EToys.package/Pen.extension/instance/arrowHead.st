*Etoys
arrowHead
	"Put an arrowhead on the previous pen stroke"
	" | pen | pen := Pen new. 20 timesRepeat: [pen turn: 360//20; go: 20; arrowHead]."

	penDown ifTrue:
		[self arrowHeadFrom: (direction degreeCos @ direction degreeSin) * -40 + location 
			to: location
			arrowSpec: (Preferences parameterAt: #arrowSpec ifAbsent: [5 @ 4])]