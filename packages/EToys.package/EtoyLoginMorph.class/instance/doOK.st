actions
doOK

	| proposed |

	proposed := theNameMorph contents string.
	proposed isEmpty ifTrue: [^self inform: 'Please enter your login name' translated].
	proposed size > 24 ifTrue: [^self inform: 'Please make the name 24 characters or less' translated].
	(Project isBadNameForStoring: proposed) ifTrue: [
		^self inform: 'Please remove any funny characters' translated
	].
	(actionBlock value: proposed) ifTrue:[self delete].