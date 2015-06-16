class initialization
unload
	Presenter defaultPresenterClass: nil.
	PasteUpMorph allInstancesDo:[:p| p dumpPresenter].
