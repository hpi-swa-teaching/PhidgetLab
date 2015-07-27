installScripting
compileEtoysPresenterMethod
"adds the viewMorph:showFlap: method to the Presenter class, which is used instead of the EtoysPresenter class in the eToys-Image"

	| presenterMethod |
	presenterMethod := (EtoysPresenter compiledMethodAt:
		#viewMorph:showFlap:)	getSource asString.
	presenterMethod := presenterMethod copyReplaceAll: '''' with: ''''''.

	^ 'Presenter compile:
		''', presenterMethod, ''''.