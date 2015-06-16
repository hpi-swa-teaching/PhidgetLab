as yet unclassified
desiredHeight

	submorphs isEmpty ifTrue: [^self height].
	"isExpanded ifFalse: [^self height]."
	^complexContents withoutListWrapper height "max: self height"
