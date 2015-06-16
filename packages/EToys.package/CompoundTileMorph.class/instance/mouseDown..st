event handling
mouseDown: evt 
	"Pretend we picked up the tile and then put it down for a trial  
	positioning."
	"The essence of ScriptEditor mouseEnter:"
	| ed ss guyToTake |
"	self isPartsDonor ifTrue:[
		dup := self duplicate.
		evt hand attachMorph: dup.
		dup position: evt position.
		^self].
	submorphs isEmpty 			never true
		ifTrue: [^ self].
"
	(ed := self enclosingEditor) ifNil: [^evt hand grabMorph: self].

	guyToTake := self.
	owner class == TilePadMorph
		ifTrue: ["picking me out of another phrase"
			(ss := submorphs first) class == TilePadMorph
				ifTrue: [ss := ss submorphs first].
			guyToTake :=  ss veryDeepCopy].
	evt hand grabMorph: guyToTake.
	ed startStepping.
	ed mouseEnterDragging: evt.
	ed setProperty: #justPickedUpPhrase toValue: true.
