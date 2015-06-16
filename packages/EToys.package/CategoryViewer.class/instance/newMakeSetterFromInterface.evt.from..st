get/set slots
newMakeSetterFromInterface: aMethodInterface evt: evt from: aMorph 
	"Button in viewer performs this to make a new style tile and attach to hand."

	| m |
	m := self newSetterTilesFor: scriptedPlayer methodInterface: aMethodInterface.
	m setProperty: #beScript toValue: true.

	owner
		ifNotNil: [self primaryHand attachMorph: m.
			m align: m topLeft with: evt hand position + (7@14)]
		ifNil: [^ m]
