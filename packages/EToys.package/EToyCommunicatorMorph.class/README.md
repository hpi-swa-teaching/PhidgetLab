====== find and report all instances =====
	EToySenderMorph instanceReport


====== zap a bunch of ipAddresses =====
	EToySenderMorph allInstances do: [ :each | 
		each ipAddress = '11.11.11.11' ifTrue: [each ipAddress: 'whizzbang']
	].
==================== now change one of the whizzbang's back to the right address=====
====== delete the whizzbangs ======
	EToySenderMorph allInstances do: [ :each | 
		each ipAddress = 'whizzbang' ifTrue: [each stopStepping; delete]
	].
