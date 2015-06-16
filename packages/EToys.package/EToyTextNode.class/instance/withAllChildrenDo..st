as yet unclassified
withAllChildrenDo: aBlock

	aBlock value: self.
	children do: [ :each | each withAllChildrenDo: aBlock].