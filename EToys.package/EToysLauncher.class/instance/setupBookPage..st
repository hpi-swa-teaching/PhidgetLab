utilities
setupBookPage: aPage

	aPage color: ScriptingSystem paneColor.
	aPage layoutPolicy: TableLayout new.
	aPage cellPositioning: #bottomCenter.
	aPage listDirection: #leftToRight.
	aPage wrapDirection: #topToBottom.
	aPage hResizing: #rigid.
	aPage vResizing: #shrinkWrap.
	aPage layoutInset: 6.
	aPage cellInset: 3.
	aPage width: 620.

	aPage setProperty: #transitionSpec toValue: (Array with: 'silence' with: #none with: #none).
