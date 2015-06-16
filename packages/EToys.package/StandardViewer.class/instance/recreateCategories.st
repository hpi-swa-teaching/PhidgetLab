categories
recreateCategories
	"To change from old to new tiles"
	| cats |
	cats := self categoriesCurrentlyShowing.
	self removeAllMorphsIn: self categoryMorphs.
	cats do: [:cat | self addCategoryViewerFor: cat]