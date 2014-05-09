switching
toggleStateQuiet
	"Toggle my state form true to false or v.v. but do not trigger #pickelChanged event."

	state 
		ifTrue: [ state := false. self color: Color blue muchDarker ]
		ifFalse: [ state := true. self color: Color blue muchLighter ].