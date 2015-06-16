as yet unclassified
directToggleButtonFor: target getter: getterSymbol setter: setterSymbol help: helpText

	^(EtoyUpdatingThreePhaseButtonMorph checkBox)
		target: target;
		actionSelector: setterSymbol;
		arguments: #();
		getSelector: getterSymbol;
		setBalloonText: helpText;
		step
