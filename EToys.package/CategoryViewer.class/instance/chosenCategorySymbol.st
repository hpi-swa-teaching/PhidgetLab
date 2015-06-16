categories
chosenCategorySymbol
	"Answer the inherent category currently being shown, not necessarily the same as the translated word."

	^ chosenCategorySymbol ifNil: [self secreteCategorySymbol]