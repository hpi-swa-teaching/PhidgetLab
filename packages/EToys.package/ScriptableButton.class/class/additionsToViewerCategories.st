scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #((button (

			(slot label 'The wording on the button' String readWrite Player getLabel Player setLabel:)
			(slot color 'The color of the object' Color readWrite Player getColor  Player  setColor:)
			(slot height  'The height' Number readWrite Player getHeight  Player  setHeight:) 
			(slot borderColor 'The color of the object''s border' Color readWrite Player getBorderColor Player  setBorderColor:)
			(slot borderWidth 'The width of the object''s border' Number readWrite Player getBorderWidth Player setBorderWidth:)
			(slot  height  'The height' Number readWrite Player getHeight  Player  setHeight:)
			(slot roundedCorners 'Whether corners should be rounded' Boolean readWrite Player getRoundedCorners Player setRoundedCorners:) 
			(slot actWhen 'When the script should fire' ButtonPhase  readWrite Player getActWhen Player setActWhen: ))))