*etoys
makeExistingView: existingView project: proj projectsToBeDeleted: projectsToBeDeleted
		existingView ifNil: [
			Smalltalk isMorphic ifTrue: [
				proj createViewIfAppropriate.
			] ifFalse: [
				ChangeSorter allChangeSets add: proj changeSet.
				Project current openProject:  proj.
				"Note: in MVC we get no further than the above"
			].
		] ifNotNil: [
			(existingView project isKindOf: DiskProxy) ifFalse: [
				existingView project changeSet name: 
ChangeSet defaultName.
				projectsToBeDeleted add: existingView project.
			].
			(existingView owner isSystemWindow) ifTrue: [
				existingView owner model: proj
			].
			existingView project: proj.
		].
