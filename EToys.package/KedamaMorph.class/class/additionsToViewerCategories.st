class initialization
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(

 	(kedama (
		(command addToPatchDisplayList: 'add patch to display list' Patch)
		(command removeAllFromPatchDisplayList 'clear the patch display list')
		(slot patchDisplayList 'patches to display' String readOnly Player getPatchesList unused unused)
		(command addToTurtleDisplayList: 'add turtle to display list' Player)
		(command removeAllFromTurtleDisplayList 'clear the turtle display list')
		(slot turtleDisplayList 'turtles to display' String readOnly Player getTurtlesList unused unused)
		(slot pixelsPerPatch 'the display scale' Number readWrite Player getPixelsPerPatch Player setPixelsPerPatch:)
		(slot color 'The color of the object' Color readWrite Player getColor  Player  setColor:)
		"(command makeTurtlesMap 'Internally create the map of turtles')"
		(slot leftEdgeMode 'the mode of left edge' EdgeMode readWrite Player getLeftEdgeMode Player setLeftEdgeMode:)
		(slot rightEdgeMode 'the mode of right edge' EdgeMode readWrite Player getRightEdgeMode Player setRightEdgeMode:)
		(slot topEdgeMode 'the mode of top edge' EdgeMode readWrite Player getTopEdgeMode Player setTopEdgeMode:)
		(slot bottomEdgeMode 'the mode of bottom edge' EdgeMode readWrite Player getBottomEdgeMode Player setBottomEdgeMode:)
	))
).
