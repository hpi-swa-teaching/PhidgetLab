testing
testColorOfInterfaceKit
	| interfaceKitParts attached |
	attached := self interfaceKit getAttached.
	interfaceKitParts := {self interfaceKit inputConnectors. self interfaceKit 							outputConnectors. self interfaceKit sensorConnectors}.
	self assert: [interfaceKitParts allSatisfy: 
					[: each | self allConnectors: each areNotGray: attached]].