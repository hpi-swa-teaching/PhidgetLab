support
isSpecialPatchReceiver: aPlayer and: cmd

	^ (aPlayer costume renderedMorph class = KedamaPatchMorph) and: [
		(#(#redComponentInto: #greenComponentInto: #blueComponentInto:
			#redComponentFrom: #greenComponentFrom: #blueComponentFrom:) includes: cmd)
	].
