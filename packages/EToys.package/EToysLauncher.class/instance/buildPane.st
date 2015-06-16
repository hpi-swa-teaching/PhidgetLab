initialization
buildPane
	"EToysLauncher new openInHand"
	self color: ScriptingSystem paneColor.
	self layoutPolicy: TableLayout new.
	self cellPositioning: #bottomCenter.
	self listDirection: #leftToRight.
	self wrapDirection: #topToBottom.
	self hResizing: #rigid.
	self vResizing: #shrinkWrap.
	self layoutInset: 6.
	self cellInset: 3.
	self width: 620.
	showGallery ifFalse: [self updatePane] ifTrue: [self updateBook].
