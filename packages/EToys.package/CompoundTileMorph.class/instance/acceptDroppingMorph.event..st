layout
acceptDroppingMorph: aMorph event: evt
	"Forward the dropped morph to the appropriate part."

	(self targetPartFor: aMorph) acceptDroppingMorph: aMorph event: evt.
