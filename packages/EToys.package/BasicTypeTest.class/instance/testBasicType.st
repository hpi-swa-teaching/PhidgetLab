tests
testBasicType
	
	self assert: (true basicType = #Boolean).
	self assert: (false basicType = #Boolean).