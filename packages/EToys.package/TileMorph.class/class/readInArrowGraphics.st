class initialization
readInArrowGraphics
	"TileMorph readInArrowGraphics"

	| obj |
	obj := (FileStream readOnlyFileNamed: 'tile inc arrow.morph') fileInObjectAndCode.
	UpPicture := obj form.

	obj := (FileStream readOnlyFileNamed: 'tile dec arrow.morph') fileInObjectAndCode.
	DownPicture := obj form.

	obj := (FileStream readOnlyFileNamed: 'tile suffix arrow.morph')fileInObjectAndCode.
	SuffixPicture := obj form.