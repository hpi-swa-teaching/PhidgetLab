as yet unclassified
mouseUp: evt in: aMorph

	| tuple project url |

	(aMorph boundsInWorld containsPoint: evt cursorPoint) ifFalse: [^self].
	tuple := aMorph valueOfProperty: #projectParametersTuple ifAbsent: [^Beeper beep].
	project := tuple fourth first.
	(project notNil and: [project world notNil]) ifTrue: [self closeMyFlapIfAny. ^project enter].
	url := tuple third.
	url isEmptyOrNil ifTrue: [^Beeper beep].
	self closeMyFlapIfAny.
	ProjectLoading thumbnailFromUrl: url.

"---
	newTuple := {
		aProject name.
		aProject thumbnail.
		aProject url.
		WeakArray with: aProject.
	}.
---"