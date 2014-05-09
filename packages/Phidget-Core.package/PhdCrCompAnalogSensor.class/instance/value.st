accessing
value
	"Gets the current value of the sensor (integer from 0 to 1000)."
	| currentValue currentValueDiff currentTimeDiff |
	phidget isAttached ifFalse: [ ^ 0 ].
	
	currentValue := self class
		primGetValue: phidget id
		at: index - 1.
		
	"time diff in milli seconds:"
	currentTimeDiff := (Time now nanoSecond / 1000000) - (lastValueTime nanoSecond / 1000000).
	currentValueDiff := currentValue - lastValue.
	
	(currentTimeDiff == 0) 
		ifFalse: [self speed: currentValueDiff / currentTimeDiff]
		ifTrue: [self speed: 0].
	
	"correct the speed somewhat"
	self speed: self speed * 200.
	
	self lastValueTime: Time now.
	self lastValue: currentValue.
		
	^currentValue