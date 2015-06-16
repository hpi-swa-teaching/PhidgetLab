menu
addCustomMenuItems: aMenu hand:  aHand
	"Add cu stom items to the menu"

	aMenu addList: #(
		('grab this object'	grabThisObject	'wherever it may be rip this object out of its container and hand it to me.')
		('reveal this object'	revealThisObject		'make this object visible and put up its halo')
		('hand me a tile'	handMeATile	'hand me a tile for this object')
		('open viewer'		viewerForThisObject	'open this object''s Viewer'))