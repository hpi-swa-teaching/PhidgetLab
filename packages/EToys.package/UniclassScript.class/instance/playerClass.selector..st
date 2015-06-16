initialization
playerClass: aPlayerClass selector: aSelector
	"Set the playerClass and selector of the receiver"

	super playerClass: aPlayerClass selector: aSelector.
	aSelector numArgs = 1 ifTrue:
		[argumentVariables := {Variable new name: 'parameter' type: #Number}]