menus
putOnBackground
	"Place the receiver, formerly private to its card, onto the shared background.  If the receiver needs data carried on its behalf by the card, such data will be represented on every card."

	| updStr |
	(updStr := self readOut) ifNotNil: ["If has a place to put per-card data, set that up."
		updStr getSelector ifNotNil: [
			self setProperty: #holdsSeparateDataForEachInstance toValue: true]].
	super putOnBackground.