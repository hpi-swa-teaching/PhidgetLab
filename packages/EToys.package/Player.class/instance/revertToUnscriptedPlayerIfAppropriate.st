misc
revertToUnscriptedPlayerIfAppropriate
	| anInstance |
	(self class selectors notEmpty or: [self class instVarNames notEmpty]) 
		ifTrue: [^self].
	anInstance := UnscriptedPlayer new.
	anInstance initializeCostumesFrom: self.
	self becomeForward: anInstance