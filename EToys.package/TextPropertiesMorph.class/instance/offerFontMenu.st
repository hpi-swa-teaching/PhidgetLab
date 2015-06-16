as yet unclassified
offerFontMenu
	"Present a menu of available fonts, and if one is chosen, apply it to the current selection.  
	Use only names of Fonts of this paragraph  "

	| aList reply |

	aList := self activeTextMorph textStyle fontNamesWithPointSizes.
	reply := UIManager default chooseFrom: aList values: aList.
	reply ifNil: [^self].
	self applyToWholeText ifTrue: [self activeEditor selectAll].
	self activeEditor replaceSelectionWith:
		(Text string: self activeEditor selection asString 
			attribute: (TextFontChange fontNumber: (aList indexOf: reply))).
	self activeTextMorph updateFromParagraph.