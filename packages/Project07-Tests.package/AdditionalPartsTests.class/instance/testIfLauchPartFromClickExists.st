testing
testIfLauchPartFromClickExists 

	| returnValue |
	returnValue := self iconicButton launchPartFromClick.
	self assert: returnValue equals: self iconicButton.