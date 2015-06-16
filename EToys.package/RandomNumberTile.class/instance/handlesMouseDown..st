event handling
handlesMouseDown: evt

	| aPoint |

	self inPartsBin ifTrue: [^false].
	aPoint := evt cursorPoint.

	"This might actually be a suitable test for the superclass, but I'll do it here to minimize the downside"

	{upArrow. downArrow. suffixArrow. retractArrow} do: [ :each |
		(each notNil and: [each bounds containsPoint: aPoint]) ifTrue: [
			^true
		]
	].

	^false		"super handlesMouseDown: evt"