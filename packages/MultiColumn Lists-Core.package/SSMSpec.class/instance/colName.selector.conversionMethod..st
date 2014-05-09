accessing
colName: columnNameString selector: methodSelector conversionMethod: conversionMethodSelector
	"Add a specification about how to get a specific column value, and what to name it."
	self addSpec: (SSMColumnSpec named: columnNameString selector: methodSelector conversionMethod: conversionMethodSelector)