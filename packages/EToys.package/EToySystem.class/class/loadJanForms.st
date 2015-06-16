development support
loadJanForms
	"EToySystem loadJanForms"

	| aReferenceStream newFormDict |
	aReferenceStream := ReferenceStream fileNamed: 'JanForms'.
	newFormDict := aReferenceStream next.
	aReferenceStream close.
	newFormDict associationsDo:
		[:assoc | Imports default importImage: assoc value named: assoc key]