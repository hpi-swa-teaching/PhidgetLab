as yet unclassified
validateTheProjectName

	| proposed |

	proposed := (namedFields at: 'projectname') contents string withBlanksTrimmed.
	proposed isEmpty ifTrue: [
		self inform: 'I do need a name for the project' translated.
		^false
	].
	proposed size > 24 ifTrue: [
		self inform: 'Please make the name 24 characters or less' translated.
		^false
	].
	(Project isBadNameForStoring: proposed) ifTrue: [
		self inform: 'Please remove any funny characters from the name' translated.
		^false
	].
	proposed = theProject name ifTrue: [^true].
	(ChangesOrganizer changeSetNamed: proposed) ifNotNil: [
		UIManager default inform: 'Sorry that name is already used' translated.
		^false
	].
	^true