menu
removeFunctionWrapper
	"Remove the function wrapper"
	
	| myPad |
	(owner isNil or: [owner owner isNil]) ifTrue: [^ Beeper beep].  "Not in a line of script"
	myPad := submorphs third.
	owner owner replaceSubmorph: owner by: myPad.
	myPad scriptEdited