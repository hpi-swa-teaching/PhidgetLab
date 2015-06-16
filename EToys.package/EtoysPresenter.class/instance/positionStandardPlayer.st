standardPlayer etc
positionStandardPlayer
	"Put the standard player slightly off-screen"

	standardPlayer ifNotNil:
		[standardPlayer costume position: (associatedMorph topLeft - (13@0))]