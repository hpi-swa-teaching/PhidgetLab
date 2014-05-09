private
calcStatusMorphWidth: direction
	"Calculates the new width of the statusMorph. Used by #updateStatus."
	
	^ (self width asFloat * (direction abs)) rounded