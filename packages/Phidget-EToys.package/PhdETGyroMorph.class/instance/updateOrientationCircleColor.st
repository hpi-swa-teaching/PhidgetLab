private
updateOrientationCircleColor

	z < 0
		ifTrue:  [ orientationCircle borderColor: Color red darker ]
		ifFalse: [ orientationCircle borderColor: Color green darker ].
	