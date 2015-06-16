miscellaneous
dismissViaHalo
	"The user has clicked in the delete halo-handle.."

	| ed |
	ed := self topEditor.
	super dismissViaHalo.
	ed ifNotNil: [ed scriptEdited]