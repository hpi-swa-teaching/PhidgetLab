*etoys
showProgressBarDuring: aBlock 
	ProgressInitiationException
		display: 'Loading a Project...'
		from: 0 to: 1
		during: [:bar | aBlock
				on: ProgressNotification
				do: [:e | 
					bar value: e messageText asNumber.
					e resume]].
