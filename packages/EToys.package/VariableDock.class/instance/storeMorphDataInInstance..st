initialization
storeMorphDataInInstance: anInstance
	"Store the morph instance data represented by the receiver into the card instance provided.  This is done by retrieving the datum value from the morph that holds it on the card, and putting it into the card instance"

	anInstance perform: playerPutSelector with: (definingMorph perform: morphGetSelector) copy