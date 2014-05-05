submorphs-add/remove
delete
	"first delete all of my ports, then delete myself."

	ports reverseDo: [ :port | port delete ].
	super delete.