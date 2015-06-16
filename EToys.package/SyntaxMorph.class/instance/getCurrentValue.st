accessing
getCurrentValue

	parseNode ifNil: [^nil].
	parseNode class == Symbol ifTrue: [^nil].	"special"
	^parseNode currentValueIn: self hostContext