tests
testForNode: targetNode andDo: aBlock 
	targetNode == parseNode ifTrue: [aBlock value: self].
	self submorphsDo: 
			[:each | 
			(each isSyntaxMorph) 
				ifTrue: [each testForNode: targetNode andDo: aBlock]]