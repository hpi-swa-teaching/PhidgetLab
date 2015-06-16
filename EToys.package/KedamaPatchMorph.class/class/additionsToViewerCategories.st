scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #(

	(kedama (
		(slot evaporationRate 'evaporation rate' Number readWrite Patch getEvaporationRate Patch setEvaporationRate:)
		(slot diffusionRate 'diffusion rate' Number readWrite Patch getDiffusionRate Patch setDiffusionRate:)
		(slot sniffRange 'sniff range' Number readWrite Patch getSniffRange Patch setSniffRange:)
		(slot shiftAmount 'shift amount when log-based color conversion is not used' Number readWrite Player getDisplayShiftAmount Player setDisplayShiftAmount:)
		(slot scaleMax 'scale when log-based color conversion is used' Number readWrite Player getDisplayScaleMax Player setDisplayScaleMax:)
		"(slot useLogDisplay 'log-based color conversion' Boolean readWrite Player getUseLogDisplay Player setUseLogDisplay:)"
		(slot displayType 'how to map the value in cells to color' PatchDisplayMode readWrite Player getDisplayType Player setDisplayType:)
		(slot color 'The color of the object' Color readWrite Player getColor  Player  setColor:)

		"(slot autoUpdate 'Updating screen always' Boolean readWrite Player getAutoUpdate  Player setAutoUpdate:)"
		(command clear 'clear all patch')
		(command diffusePatchVariable 'diffuse')
		(command decayPatchVariable 'decay')

		(command redComponentInto: 'split red component into another patch' Patch)
		(command greenComponentInto: 'split green component into another patch' Patch)
		(command blueComponentInto: 'split blue component into another patch' Patch)

		(command redComponentFrom: 'merge red component from another patch' Patch)
		(command greenComponentFrom: 'merge green component from another patch' Patch)
		(command blueComponentFrom: 'merge blue component from another patch' Patch)

)))
