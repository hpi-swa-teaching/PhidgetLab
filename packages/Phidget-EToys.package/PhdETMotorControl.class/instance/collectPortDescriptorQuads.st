initialization
collectPortDescriptorQuads
	"Lists the Ports I want to show."
	| quads |
	quads := OrderedCollection new.
	PhdETInputPort addPortDescriptorQuadsTo: quads.
	^ quads