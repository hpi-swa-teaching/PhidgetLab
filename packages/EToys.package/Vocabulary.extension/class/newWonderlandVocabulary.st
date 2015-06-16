*eToys-type vocabularies
newWonderlandVocabulary
	"Answer a Wonderland vocabulary -- highly experimental"

	| aVocabulary  |
	"Vocabulary newWonderlandVocabulary"
	aVocabulary := Vocabulary new vocabularyName: #Wonderland.
	aVocabulary documentation: 'A simple vocabulary for scripting Alice objects'.
	aVocabulary initializeFromTable:  #(
		(color color: () Color (basic color) 'The color of the object' unused updating)
		"--"
		(getX setX: () Number (basic geometry) 'The x position' unused updating)
		(getY setY: () Number (basic geometry) 'The y position' unused updating)
		(getZ setZ: () Number (basic geometry) 'The z position' unused updating)
		"--"
		(width setWidth: () Number (geometry) 'The width of the object' unused updating)
		(height setHeight: () Number (geometry) 'The height of the object' unused updating)
		(depth setDepth: () Number (geometry) 'The depth of the object' unused updating)
		"--"
		(heading setHeading: () Number (basic geometry) 'The heading of the object' unused updating)
		(forwardBy: unused ((distance Number)) none (basic motion) 'Moves the object by the specified distance' 'forward by')
		(turnBy: unused ((angle Number)) none (basic motion) 'Turns the object by the specified number of degrees' 'turn by')
		(graphic setGraphic: () Graphic (basic graphics) 'The picture currently being worn' unused updating)
		(animationIndex setAnimationIndex: () Number (graphics) 'The index in the object''s animation chain' unused updating)
		(emptyScript unused () none (scripts) 'The empty script')
		(distanceToCamera setDistanceToCamera: () Number (geometry) 'The distance of the object from the camera' unused updating)
		(distanceTo: unused ((target Player)) Number (geometry) 'The distance of the object to the given target')
	).
	^ aVocabulary