drawing
drawToggleOn: aCanvas in: aRectangle

	| aForm |

	aCanvas 
		fillRectangle: (bounds withRight: aRectangle right)
		color: container color.
	complexContents hasContents ifFalse: [^self].
	aForm := isExpanded 
		ifTrue: [container expandedForm]
		ifFalse: [container notExpandedForm].
	^aCanvas 
		paintImage: aForm 
		at: aRectangle topLeft
