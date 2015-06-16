menus
showCode
	"Turn my current state into the text of a method.  Put it in a window."

	(Workspace new contents: self rootTile decompile) openLabel: self printString,' code'

	
