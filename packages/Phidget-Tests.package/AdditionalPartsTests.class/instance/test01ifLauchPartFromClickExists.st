testing
test01ifLauchPartFromClickExists 

	| returnValue |
	returnValue := self iconicButton launchPartFromClick.
	self assert: returnValue equals: self iconicButton.