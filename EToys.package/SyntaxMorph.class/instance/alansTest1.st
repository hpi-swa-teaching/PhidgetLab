formatting options
alansTest1
	
	| root |

	root := self rootTile ifNil: [self].
	^root valueOfProperty: #alansNewStyle ifAbsent: [self usingClassicTiles not]