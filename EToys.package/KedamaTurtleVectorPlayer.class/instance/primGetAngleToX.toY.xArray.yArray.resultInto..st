primitives
primGetAngleToX: pX toY: pY xArray: xArray yArray: yArray resultInto: result

	| ppx ppy x y ret |
	<primitive: 'vectorGetAngleTo' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #vectorGetAngleTo."

	ppx := pX.
	ppy := pY.
	1 to: result size do: [:index |
		pX isCollection ifTrue: [
			ppx := pX at: index.
			ppy := pY at: index.
		].
		x := ppx - (xArray at: index).
		y := ppy - (yArray at: index).
		ret := (x@y) theta radiansToDegrees + 90.0.
		ret > 360.0 ifTrue: [ret := ret - 360.0].
		result at: index put: ret.
	].
	^ result.
