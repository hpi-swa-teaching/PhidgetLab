all
precl: anObject

	(#(#max: #min:) includes: anObject) ifTrue: [^ 1].
	(#(#+ #-) includes: anObject) ifTrue: [^ 2].
	(#(#* #/ #// #\\) includes: anObject) ifTrue: [^ 3].
	^ 0.
