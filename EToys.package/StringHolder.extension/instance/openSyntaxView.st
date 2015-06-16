*Etoys-tiles
openSyntaxView
	"Open a syntax view on the current method"

	| class selector |

	(selector := self selectedMessageName) ifNotNil: [
		class := self selectedClassOrMetaClass.
		SyntaxMorph testClass: class andMethod: selector.
	]