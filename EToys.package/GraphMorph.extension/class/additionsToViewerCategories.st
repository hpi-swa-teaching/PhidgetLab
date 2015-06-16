*eToys-scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(

	(basic (
(slot cursor 	'The current cursor location, wrapped back to the beginning if appropriate' Number	 readWrite Player getCursor Player setCursorWrapped:)

(slot sampleAtCursor	'The sample value at the current cursor location' Number readWrite Player getSampleAtCursor Player setSampleAtCursor:)))

	(sampling (
(slot cursor 	'The current cursor location, wrapped back to the beginning if appropriate' Number	 readWrite Player getCursor Player setCursorWrapped:)
(slot sampleAtCursor	'The sample value at the current cursor location' Number readWrite Player getSampleAtCursor Player setSampleAtCursor:)
(slot lastValue 'The last value obtained' Number readWrite	Player getLastValue Player setLastValue:)
(command clear 'Clear the graph of current contents')
(command loadSineWave 'Load a sine wave as the current graph')
(command loadSound: 'Load the specified sound into the current graph' Sound)
(command reverse 'Reverse the graph')
(command play 'Play the current graph as a sound'))))