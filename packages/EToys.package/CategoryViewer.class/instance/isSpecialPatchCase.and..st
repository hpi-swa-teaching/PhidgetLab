support
isSpecialPatchCase: aPlayer and: cmd

	((aPlayer costume renderedMorph class = KedamaMorph) and: [cmd = #addToPatchDisplayList:]) ifTrue: [
		^ true.
	].
	(aPlayer costume renderedMorph class = KedamaPatchMorph) ifTrue: [
		(#(#redComponentInto: #greenComponentInto: #blueComponentInto:
			#redComponentFrom: #greenComponentFrom: #blueComponentFrom:) includes: cmd) ifTrue: [
		^ true.
	].
	].

	^ false.
