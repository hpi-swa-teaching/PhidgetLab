initialization
initializeForPlayer: aPlayer uniclassScript: aUniclassScript
	"Initialize the receiver for the given player and uniclass script"

	target := aPlayer.
	uniclassScript := aUniclassScript.
	actionSelector := #runScript:.
	arguments := Array with: uniclassScript selector.
	self establishLabelWording
	