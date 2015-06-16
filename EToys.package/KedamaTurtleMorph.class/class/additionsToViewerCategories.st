scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	"self halt."
	^ #(

	('kedama turtle' (
		(command die 'delete this turtle')

		(slot upHill 'uphill of the implicit at my location' Number readOnly Player getUphillIn: unspecified unspecified)
		(slot bounceOn 'detect collision and bounce back' Boolean readOnly Player bounceOn: unspecified unspecified)
		(slot bounceOnColor 'detect collision and bounce back on a color' Boolean readOnly Player bounceOnColor: unspecified unspecified)
		(slot patchValueIn 'get the value at this position' Number readWrite Number getPatchValueIn: Number setPatchValueIn:to:)
		(slot distanceTo 'The distance to another turtle' Number readOnly Player getDistanceTo: unused unused)
		(slot angleTo 'The angle to another turtle' Number readOnly Player getAngleTo: unused unused)

		(slot getReplicated 'returns a copy of this turtle' Player readOnly Player getReplicated unused unused)
		(slot x 'The x coordinate' Number readWrite Player getX Player setX:)
		(slot y  	'The y coordinate' Number readWrite Player 	getY Player setY:)
		(slot heading 'Which direction the object is facing.  0 is straight up' Number readWrite Player getHeading Player setHeading:)
		(command forward: 'Moves the object forward in the direction it is heading' Number)
		(command turn: 'Change the heading of the object by the specified amount' Number)
			(slot color 'The color of the object' Color readWrite Player getColor  Player  setColor:)
	"		(slot headingTheta 'The angle, in degrees, that my heading vector makes with the positive x-axis' Number readWrite Player getHeadingTheta Player setHeadingTheta:)

			(slot theta 'The angle between the positive x-axis and the vector connecting the origin to the object''s position' Number readWrite Player getTheta Player setTheta: )
"
		(slot turtleVisible 'The flag that governs the visibility of turtle' Boolean readWrite Player getTurtleVisible Player setTurtleVisible:)
			"(command turtleShow 'make the object visible')
			(command turtleHide 'make the object invisible')"

		(slot turtleOf 'returns a turtle of specified breed at my position.' Player readOnly Player getTurtleOf: unused unused)
		"(slot normal 'The normal for bouncing' Number readWrite Player getNormal Player  setNormal:)"


	))
	('kedama turtle breed' (
		(slot turtleCount 'set the number of turtles' Number readWrite Number getTurtleCount Number setTurtleCount:)
		(slot grouped 'turtles bahaves as one connected objects' Boolean readWrite Boolean getGrouped Boolean setGrouped:)
	))

	('kedama turtle color' (
		(slot redComponentIn 'The red component in specified patch.' Number readWrite Player getRedComponentIn: Player setRedComponentIn:to:)
		(slot greenComponentIn 'The green component in specified patch.' Number readWrite Player getGreenComponentIn: Player setGreenComponentIn:to:)
		(slot blueComponentIn 'The blue component in specified patch.' Number readWrite Player getBlueComponentIn: Player setBlueComponentIn:to:)
		(command colorFromPatch: 'make my color specified in the patch' Patch)
		(command colorToPatch: 'store my color into the patch' Patch)
	))

)

