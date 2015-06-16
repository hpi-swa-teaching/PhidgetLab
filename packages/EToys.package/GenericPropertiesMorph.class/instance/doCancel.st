as yet unclassified
doCancel

	thingsToRevert keysAndValuesDo: [ :k :v |
		myTarget perform: k with: v
	].
	self delete