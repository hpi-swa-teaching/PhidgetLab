as yet unclassified
testMaxDraggablePorts
	"make sure the morphs for dragging out new sensors are hidden, if there are no more ports left for them to connect to"

	| partsBin interfaceKit |
	partsBin := (self subject) findByClass: PhdETPartsBin.
	interfaceKit := self subject morphs at: 1.
	1 to: 8 do: [ :x | PhdETLightSensorPort newStandAlone: interfaceKit. ].

	partsBin submorphs do: [ :s | 
		s class = PhdETSensorPort ifTrue: [
			self assert: s visible = false]].