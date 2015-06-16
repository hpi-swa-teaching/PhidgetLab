class initialization
initialize
	Presenter defaultPresenterClass: self.
	PasteUpMorph allInstancesDo:[:p| p dumpPresenter].
	Vocabulary initializeStandardVocabularies.