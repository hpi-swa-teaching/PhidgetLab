debugging
inspectCurrentBackground
	"Open an inspector on the corrent background.  Ideally should put include the background name in the inspector's title."

	^ self currentPage inspectWithLabel: 'A Background'
