bin
collectPortDescriptorQuads
	"Lists the Ports I want to show."

	| quads |
	quads := OrderedCollection new.
	PhdETInputPort addPortDescriptorQuadsTo: quads.
	PhdETOutputPort addPortDescriptorQuadsTo: quads.
	PhdETBarSensorPort addPortDescriptorQuadsTo: quads.
	PhdETRotationSensorPort addPortDescriptorQuadsTo: quads.
	PhdETLightSensorPort addPortDescriptorQuadsTo: quads.
	PhdETSliderSensorPort addPortDescriptorQuadsTo: quads.
	PhdETJoystickSensorPort addPortDescriptorQuadsTo: quads.
	PhdETTemperatureSensorPort addPortDescriptorQuadsTo: quads.
	^ quads