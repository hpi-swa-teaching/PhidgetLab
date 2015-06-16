slot getters/setters
getX
		"emergency patch; unclear why not needed in getY; in any case, have
		 removed the getX/getY retrievals from the viewer in 2.0-final anyway"
	| aCostume |
	(aCostume := self costume) isInWorld ifFalse: [^ 100].
	^ aCostume x