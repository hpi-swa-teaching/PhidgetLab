as yet unclassified
closeMyFlapIfAny

	| myFlap allTabs myTab myWorld |

	myWorld := self world.
	myFlap := self nearestOwnerThat: [ :each | each isFlap].
	myFlap ifNil: [^self].
	allTabs := myWorld submorphs select: [ :each | each isFlapTab].
	myTab := allTabs detect: [ :each | each referent == myFlap] ifNone: [^self].
	myTab hideFlap.
	myWorld displayWorldSafely.
	
