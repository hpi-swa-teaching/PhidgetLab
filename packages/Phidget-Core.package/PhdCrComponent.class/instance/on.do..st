accessing
on: aSymbol do: aBlock
	"When event aSymbol is signaled for my Phidget, do aBlock.
	This method is provided to have a moren natural interface.
	See PhdCrPhidget on:do: for more information."
	
	phidget on: aSymbol do: aBlock