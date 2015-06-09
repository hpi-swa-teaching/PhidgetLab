private
openedListSizes

	| listSizes firstElemSize|
	listSizes := self openedHeaderSizes copy.
	"eliminate gap caused by MultiColumnListHeader"
	firstElemSize := (listSizes first) + 3.
	listSizes at: 1 put: firstElemSize.
	^listSizes.