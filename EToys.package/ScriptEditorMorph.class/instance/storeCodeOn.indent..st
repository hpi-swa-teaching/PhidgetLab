other
storeCodeOn: aStream indent: tabCount 
	| lastOwner |
	lastOwner := nil.
	self tileRows do: 
			[:r | 
			r do: 
					[:m | 
					((m isTileMorph) 
						or: [(m isCompoundTileMorph) or: [m isPhraseTileMorph]]) 
							ifTrue: 
								[tabCount timesRepeat: [aStream tab].
								(m owner ~= lastOwner and: [lastOwner ~= nil]) 
									ifTrue: 
										[aStream
											nextPut: $.;
											cr;
											tab.
										]
									ifFalse: 
										[lastOwner ~= nil ifTrue: [aStream space].
										].
								m storeCodeOn: aStream indent: tabCount.
								lastOwner := m owner]]]