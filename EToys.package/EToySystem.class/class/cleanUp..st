class initialization
cleanUp: aggressive
	aggressive ifTrue: [
	StandardScriptingSystem removeUnreferencedPlayers.
	Project removeAllButCurrent.
	#('Morphic-UserObjects' 'EToy-UserObjects' 'Morphic-Imported' ) do:
		[ : each | SystemOrganization removeSystemCategory: each ].
	World dumpPresenter.
	Preferences removePreference: #allowEtoyUserCustomEvents.]