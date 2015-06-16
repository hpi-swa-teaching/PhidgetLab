as yet unclassified
allForIPAddress: ipString	"for cleaning up Alan's demo"
"
EToySenderMorph allForIPAddress: '1.2.3.4'
"
	Smalltalk garbageCollect.
	(self allInstances select: [ :each | each ipAddress = ipString]) explore