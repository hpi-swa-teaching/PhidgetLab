initialization
userLevel
	"Answer the user level for this viewer, which can be used in figuring out what to display in the viewer.  Initially, we make little use of this, but in past prototypes, and in future deployments, it may be handy."

	^ self valueOfProperty: #userLevel ifAbsent: [1]