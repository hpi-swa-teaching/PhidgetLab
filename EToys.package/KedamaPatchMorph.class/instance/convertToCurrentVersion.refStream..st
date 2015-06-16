private
convertToCurrentVersion: varDict refStream: smartRefStrm
	
	varDict at: 'useLogDisplay' ifPresent: [ :x | 
		displayType := x ifTrue: [#logScale] ifFalse: [#linear].
	].
	displayType ifNil: [displayType := #logScale].
	^super convertToCurrentVersion: varDict refStream: smartRefStrm.
