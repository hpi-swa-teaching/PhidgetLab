private
createAndAddAttachedLabel
	"changed Attached Phidgets: to Attached Sensors: for consistency"
	attachedLabel := StringMorph contents: 'Attached Sensors:'.
	self addMorph: attachedLabel.