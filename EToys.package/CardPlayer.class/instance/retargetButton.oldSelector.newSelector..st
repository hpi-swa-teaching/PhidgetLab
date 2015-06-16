scripts-kernel
retargetButton: mm oldSelector: oldSelector newSelector: newSelector
	"changing the name of a script -- tell any buttons that fire it"

	(mm respondsTo: #scriptSelector) ifTrue: [
		mm scriptSelector == oldSelector ifTrue: [
			mm scriptSelector: newSelector.
			mm setNameTo: newSelector]].
	(mm respondsTo: #actionSelector) ifTrue: [
		mm actionSelector == oldSelector ifTrue: [
			mm target class == self class ifTrue: [
				mm actionSelector: newSelector.
				mm setNameTo: newSelector]]].
