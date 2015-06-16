slot-accessing
setTurtleCount: aNumber

	"self allOpenViewers do: [:v | v resetWhoIfNecessary]."
	super setCostumeSlot: #turtleCount: toValue: aNumber.
