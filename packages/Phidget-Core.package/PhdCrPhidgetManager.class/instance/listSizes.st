private
listSizes

	| listSizes firstElemSize|
	listSizes := self headerSizes copy.
	"eliminate gap caused by MultiColumnListHeader"
	firstElemSize := (listSizes first) + 3.
	listSizes at: 1 put: firstElemSize.
	^listSizes.