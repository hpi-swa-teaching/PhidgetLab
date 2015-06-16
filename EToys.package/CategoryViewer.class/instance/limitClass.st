support
limitClass
	"Answer the receiver's limitClass"

	| outer |
	^ (outer := self outerViewer)
		ifNotNil:
			[outer limitClass]
		ifNil:
			[ProtoObject]