*Etoys
isolatedCodePaneForClass: aClass selector: aSelector
	"Answer a MethodMorph on the given class and selector"

	| aCodePane aMethodHolder |

	aMethodHolder := self new.
	aMethodHolder methodClass: aClass methodSelector: aSelector.

	aCodePane := MethodMorph on: aMethodHolder text: #contents accept: #contents:notifying:
			readSelection: #contentsSelection menu: #codePaneMenu:shifted:.
	aMethodHolder addDependent: aCodePane.
	aCodePane borderWidth: 2; color: Color white.
	aCodePane scrollBarOnLeft: false.
	aCodePane width: 300.
	^ aCodePane