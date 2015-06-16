change reporting
ownerChanged
	super ownerChanged.
	(owner class == TilePadMorph and:[owner layoutPolicy isNil]) ifTrue:[
		owner layoutPolicy: TableLayout new.
		owner hResizing: #shrinkWrap.
		owner vResizing: #spaceFill.
	].