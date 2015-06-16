initialization
dockMorphUpToInstance: anInstance
	"Dock my defining morph up to the given player instance.  NB: The odious #cardInstance mechanism used here was a last-minute stopgap for some demo, which surely should not be allowed to survive."

	definingMorph setProperty: #cardInstance toValue: anInstance.
	definingMorph perform: morphPutSelector with: (anInstance perform: playerGetSelector)