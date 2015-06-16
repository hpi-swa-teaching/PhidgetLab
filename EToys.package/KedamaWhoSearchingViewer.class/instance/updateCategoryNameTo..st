categories
updateCategoryNameTo: aName
	"Update the category name, because of a language change."

	self doSearchFrom: (namePane findA: PluggableTextMorph) text interactive: false.
	self flag: #deferred.  "A nice touch would be to change the Button wording here"
