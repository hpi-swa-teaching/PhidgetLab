initialization
collectPortDescriptorQuads
	"Lists the Ports I want to show."

	| quads |
	quads := OrderedCollection new.
	PhdETInputPort addPortDescriptorQuadsTo: quads.
	PhdETOutputPort addPortDescriptorQuadsTo: quads.
	PhdETSensorPort addPortDescriptorQuadsTo: quads.
	^ quads