testing
testInterfaceKitGrayWhenNotAttached
	| interfaceKitParts attached |
	attached := false.
	interfaceKitParts := {self kit inputConnectors. self kit 							outputConnectors. self kit sensorConnectors}.
	self assert: [interfaceKitParts allSatisfy: 
					[: each | self allConnectors: each areNotGray: attached]].