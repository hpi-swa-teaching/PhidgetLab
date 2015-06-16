code generation
storeCodeOn: aStream indent: tabCount 
	"Store code representing the receiver onto the stream, with the given amount of indentation"

	| op playerBearingCode |
	playerBearingCode := self playerBearingCode.	"Must determine whom is scripted for what follows to work; if it's ever nil, we've got trouble"
	type = #expression 
		ifTrue: 
			[^aStream
				nextPut: $(;
				nextPutAll: operatorOrExpression;
				nextPut: $)].
	type = #literal 
		ifTrue: 
			[^aStream
				nextPut: $(;
				nextPutAll: literal printString;
				nextPut: $)].
	type == #objRef 
		ifTrue: 
			[^playerBearingCode == actualObject 
				ifTrue: 
					["If the object is the method's own 'self' then we MUST, rather than just MAY, put out 'self' rather than the referencer call, though the latter will temporarily work if only one instance of the uniclass exists."

					aStream nextPutAll: 'self']
				ifFalse: 
					[(actualObject isPlayerLike and: [actualObject isSequentialStub]) ifTrue: [
						actualObject storeCodeOn: aStream indent: tabCount.
					] ifFalse: [
						 Preferences capitalizedReferences 
						ifTrue: 
							["Global dictionary References"

							self flag: #deferred.	"Start deploying the meesage-receiver hints soon"
							aStream nextPutAll: actualObject uniqueNameForReference]
						ifFalse: 
							["old class-inst-var-based scheme used  Feb 1998 to Oct 2000, and indeed
						ongoing in school year 2000-01 at the open school"

							aStream nextPutAll: 'self class '.
							aStream 
								nextPutAll: (playerBearingCode class referenceSelectorFor: actualObject)]]]].
	type = #operator 
		ifTrue: 
			[op := ((UpdatingOperators includesKey: operatorOrExpression) 
				and: [self precedingTileType = #slotRef]) 
					ifTrue: [UpdatingOperators at: operatorOrExpression]
					ifFalse: [operatorOrExpression].
			^op isEmpty 
				ifTrue: [aStream position: aStream position - 1]
				ifFalse: [aStream nextPutAll: op]]

	"The following branch has long been disused
	type = #slotRef ifTrue:
		[self isThisEverCalled.
		refType := self slotRefType.
		refType = #get ifTrue:
			[^ aStream
				nextPutAll: targetName;
				space;
				nextPutAll: (Utilities getterSelectorFor: slotName)].
		refType = #set ifTrue:
			[^ aStream
				nextPutAll: targetName;
				space;
				nextPutAll: (Utilities setterSelectorFor: slotName);
				nextPut: $:].
		refType = #update ifTrue:
			[^ aStream
				nextPutAll: targetName;
				space;
				nextPutAll: slotName;
				nextPutAll: ': ';
				nextPutAll: targetName;
				space;
				nextPutAll: slotName]]"