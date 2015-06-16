initialization
initializeFor: aScriptInstantiation
	"Answer a control that will serve to reflect and allow the user to change the status of the receiver"

	|  statusReadout |
	self hResizing: #shrinkWrap.
	self cellInset: 2@0.
	scriptInstantiation := aScriptInstantiation.
	tickPauseButtonsShowing := false.

	self addMorphBack: (statusReadout := UpdatingSimpleButtonMorph new).
	statusReadout label: aScriptInstantiation status asString font: Preferences standardButtonFont.
	statusReadout setNameTo: 'trigger'.
	statusReadout target: aScriptInstantiation; wordingSelector: #translatedStatus; actionSelector: #presentScriptStatusPopUp.
	statusReadout setBalloonText: 'when this script should run' translated.
	statusReadout actWhen: #buttonDown.

	self assurePauseTickControlsShow.
	aScriptInstantiation updateStatusMorph: self