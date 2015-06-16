other
setTimeStamp
	timeStamp := Date today mmddyyyy, ' ', (Time now print24 copyFrom: 1 to: 8).
	^ timeStamp