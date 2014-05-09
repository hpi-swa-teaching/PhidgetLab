accessing
calcSpeed: aNumber

	| currentValue currentTimeDiff currentValueDiff speed |
	currentValue := aNumber.
	
	"time diff in milli seconds:"
	currentTimeDiff := (Time now nanoSecond / 1000000) - (self lastValueTime nanoSecond / 1000000).
	currentValueDiff := currentValue - self lastValue.
	
	(currentTimeDiff == 0) 
		ifFalse: [speed := currentValueDiff / currentTimeDiff]
		ifTrue: [speed := 0].
	
	"correct the speed somewhat"
	speed := speed * 200.
	
	self lastValueTime: Time now.
	self lastValue: currentValue.
	
	^ speed