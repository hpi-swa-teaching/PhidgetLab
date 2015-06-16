*eToys-scripting
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."

	^ #((#'book navigation'
			((command goto: 'go to the given page' Player)
			(command nextPage 'go to next page')
			(command previousPage 'go to previous page')
			(command firstPage 'go to first page')
			(command lastPage 'go to last page')
			(slot pageNumber 'The ordinal number of the current page' Number readWrite Player getPageNumber Player setPageNumber:))))