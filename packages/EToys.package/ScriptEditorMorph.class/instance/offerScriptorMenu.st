other
offerScriptorMenu
	"Put up a menu in response to the user's clicking in the menu-request area of the scriptor's heaer"

	| aMenu  count |

	self modernize.
	ActiveHand showTemporaryCursor: nil.

	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: scriptName asString.

	Preferences universalTiles ifFalse:
		[count := self savedTileVersionsCount.
		self showingMethodPane
			ifFalse:				"currently showing tiles"
				[aMenu add: 'show code textually' translated action: #showSourceInScriptor.
				count > 0 ifTrue: 
					[aMenu add: 'revert to tile version...' translated action:	 #revertScriptVersion].
				aMenu add: 'save this version' translated	action: #saveScriptVersion]

			ifTrue:				"current showing textual source"
				[count >= 1 ifTrue:
					[aMenu add: 'revert to tile version' translated action: #revertToTileVersion]]].

	aMenu addList: {
		#-.
		{'destroy this script' translated.					#destroyScript}.
		{'rename this script' translated.					#renameScript}.
		}.

	self hasParameter ifFalse:
		[aMenu addList: {{'button to fire this script' translated.			#tearOfButtonToFireScript}}].

	aMenu addList: {
		{'edit balloon help for this script' translated.		#editMethodDescription}.
		#-.
		{'explain status alternatives' translated. 			#explainStatusAlternatives}.
		#-.
		{'hand me a tile for self' translated.					#handUserTileForSelf}.
		{'hand me a "random number" tile' translated.		#handUserRandomTile}.
		{'hand me a "button down?" tile' translated.		#handUserButtonDownTile}.
		{'hand me a "button up?" tile' translated.			#handUserButtonUpTile}.
		}.

	aMenu addList: (self hasParameter
		ifTrue: [{
			#-.
			{'remove parameter' translated.					#ceaseHavingAParameter}}]
		ifFalse: [{
			{'fires per tick...' translated.						#chooseFrequency}.
			#-.
			{'add parameter' translated.						#addParameter}}]).

	aMenu popUpInWorld: self currentWorld.
