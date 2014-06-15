running
testJoystickAngle
	| iteration xValue yValue calculatedAngle expectedAngle|
	iteration := 3.
	xValue := 1000.
	yValue := 500.
	expectedAngle := 0.
	iteration timesRepeat: [ self joystick slaveValue: xValue.
							self joystick masterValue: yValue.
							calculatedAngle := self joystick calculateAngle.
							self assert: [ calculatedAngle = expectedAngle].
							xValue := (xValue - 500) abs.
							yValue := (yValue - 500) abs.
							expectedAngle := expectedAngle + 90].