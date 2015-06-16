utilities
directories
	"I find a project name in this order"
	"self basicNew directories"
	| ret |
	ret := Array with: SecurityManager default untrustedUserDirectory with: Smalltalk imagePath.
	showGallery ifFalse: [^ ret].
	^ ret copyWith: Smalltalk imagePath, FileDirectory slash, 'ExampleEtoys'.
