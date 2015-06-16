categories
categoryMorphs
	^ self submorphsSatisfying: [:m | m isKindOf: CategoryViewer]