updating
updateStatus
| colorValue colorToSet|
	
	colorValue := value/1000.
	colorToSet := Color r: colorValue g: colorValue b: 0.
	self color: colorToSet.