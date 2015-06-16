*eToys-scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(
(slider (

(slot numericValue 'A number representing the current position of the knob.' Number readWrite Player getNumericValue Player setNumericValue:)

(slot minVal	 'The number represented when the knob is at the left or top of the slider; the smallest value returned by the slider.' Number readWrite	Player getMinVal Player setMinVal:)

(slot maxVal 'The number represented when the knob is at the right or bottom of the slider; the largest value returned by the slider.' Number readWrite	Player getMaxVal Player setMaxVal:)

(slot descending 'Tells whether the smallest value is at the top/left (descending = false) or at the bottom/right (descending = true)' Boolean readWrite Player getDescending Player setDescending:)

(slot truncate 'If true, only whole numbers are used as values; if false, fractional values are allowed.' Boolean readWrite	Player getTruncate Player setTruncate:)

(slot color 'The color of the slider' Color readWrite Player getColor  Player  setColor:)

(slot knobColor 'The color of the slider' Color readWrite Player getKnobColor Player setKnobColor:)
(slot  width  'The width' Number readWrite Player getWidth  Player  setWidth:)
(slot  height  'The height' Number readWrite Player getHeight  Player  setHeight:)))

(basic	(
(slot numericValue 'A number representing the current position of the knob.' Number readWrite Player getNumericValue Player setNumericValue:))))

