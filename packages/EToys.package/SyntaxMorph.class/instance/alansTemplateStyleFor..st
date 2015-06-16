alans styles
alansTemplateStyleFor: key

	(#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue:) includes: key) ifTrue: [^1].
	(#(do: collect:) includes: key) ifTrue: [^2].
	(#(if:do:) includes: key) ifTrue: [^3].
	^0
