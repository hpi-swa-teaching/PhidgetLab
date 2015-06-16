*etoys
fileInName: aFileName archive: archive morphOrList: morphOrList  
	| baseChangeSet substituteFont numberOfFontSubstitutes exceptions anObject mgr |
	ResourceCollector current: ResourceCollector new.
	baseChangeSet := ChangeSet current.
	self useTempChangeSet.		"named zzTemp"
	"The actual reading happens here"
	substituteFont := Preferences standardEToysFont copy.
	numberOfFontSubstitutes := 0.
	exceptions := Set new.
	[[anObject := morphOrList fileInObjectAndCodeForProject]
		on: MissingFont do: [ :ex |
				exceptions add: ex.
				numberOfFontSubstitutes := numberOfFontSubstitutes + 1.
				ex resume: substituteFont ]]
			ensure: [ ChangeSet  newChanges: baseChangeSet].
	mgr := ResourceManager new initializeFrom: ResourceCollector current.
	mgr fixJISX0208Resource.
	mgr registerUnloadedResources.
	archive ifNotNil:[mgr preLoadFromArchive: archive cacheName: aFileName].
	ResourceCollector current: nil.
	^ {anObject. numberOfFontSubstitutes. substituteFont. mgr}