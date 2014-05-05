instance creation
newWithChar: aPhdCrCustomChar andIndex: index

	| picker |

	picker := self new.
	
	picker
		customChar: aPhdCrCustomChar;
		initialCustomChar: aPhdCrCustomChar;
		index: index.
		
	^ picker