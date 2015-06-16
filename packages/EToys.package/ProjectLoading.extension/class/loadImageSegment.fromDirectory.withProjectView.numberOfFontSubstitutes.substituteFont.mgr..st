*etoys
loadImageSegment: morphOrList  fromDirectory: aDirectoryOrNil withProjectView: existingView numberOfFontSubstitutes: numberOfFontSubstitutes substituteFont: substituteFont mgr: mgr

	| proj projectsToBeDeleted ef f |
	(f := (Flaps globalFlapTabWithID: 'Navigator' translated)) ifNotNil: [f hideFlap].
	proj := morphOrList arrayOfRoots
			detect: [:mm | mm isKindOf: Project]
			ifNone: [^ nil].
	numberOfFontSubstitutes > 0 ifTrue: [
		proj projectParameterAt: #substitutedFont put: substituteFont].
	ef := proj projectParameterAt: #eToysFont.
	(ef isNil or: [ef ~= substituteFont familySizeFace]) ifTrue: [
		proj projectParameterAt: #substitutedFont put: substituteFont.
	].
	proj projectParameters at: #MultiSymbolInWrongPlace put: false.
		"Yoshiki did not put MultiSymbols into outPointers in older images!"
	morphOrList arrayOfRoots do: [:obj |
		obj fixUponLoad: proj seg: morphOrList "imageSegment"].
	(proj projectParameters at: #MultiSymbolInWrongPlace) ifTrue: [
		morphOrList arrayOfRoots do: [:obj | (obj isKindOf: Set) ifTrue: [obj rehash]]].

	proj resourceManager: mgr.
	"proj versionFrom: preStream."
	proj lastDirectory: aDirectoryOrNil.
	proj setParent: Project current.
	projectsToBeDeleted := OrderedCollection new.
	existingView == #none ifFalse: [
		self makeExistingView: existingView project: proj projectsToBeDeleted: projectsToBeDeleted].
	ChangeSorter allChangeSets add: proj changeSet.
	Project current projectParameters
		at: #deleteWhenEnteringNewProject
		ifPresent: [ :ignored |
			projectsToBeDeleted add: Project current.
			Project current removeParameter: #deleteWhenEnteringNewProject.
		].
	projectsToBeDeleted isEmpty ifFalse: [
		proj projectParameters
			at: #projectsToBeDeleted
			put: projectsToBeDeleted.
	].
	proj removeParameter: #eToysFont.
	^ proj