instance creation
checkBox
	"Answer a button pre-initialized with checkbox images."

	"(Form extent: 12@12 depth: 32) morphEdit"
	CheckedForm ifNil: [
		self setForms
	].
	^self new
		onImage: CheckedForm;
		pressedImage: MouseDownForm;
		offImage: UncheckedForm;
		extent: CheckedForm extent;
		yourself
