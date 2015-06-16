status control
statusControlMorph
	"Answer a control that will serve to reflect (and allow the user to change) the status of the receiver"

	^ ScriptStatusControl new initializeFor: self
