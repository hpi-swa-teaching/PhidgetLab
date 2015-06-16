dropping/grabbing
justGrabbedFrom: formerOwner
	| editor |
	formerOwner ifNil:[^self].
	editor := formerOwner topEditor.
	editor ifNotNil:[editor scriptEdited].