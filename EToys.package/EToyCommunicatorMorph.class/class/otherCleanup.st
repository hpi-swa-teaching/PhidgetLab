as yet unclassified
otherCleanup
">>>
	EToySenderMorph allInstances do: [ :each | 
		each ipAddress = '11.11.11.11' ifTrue: [each ipAddress: 'whizzbang']
	].
<<<"
	"==================== now change one of the whizzbang's back to the right address====="
">>>
	EToySenderMorph allInstances do: [ :each | 
		each ipAddress = 'whizzbang' ifTrue: [each delete]
	].
<<<"
