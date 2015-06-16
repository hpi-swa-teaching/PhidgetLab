initialization
buildButtonFor: fileName 
	"(self basicNew buildButtonFor: 'new2.001.pr') openInHand"
	"(self basicNew buildButtonFor: 'nothing.pr') openInHand"
	| thumbnail aButton base title projectName |
	projectName := (Project parseProjectFileName: fileName) first.
	base := Morph new.
	base clipSubmorphs: true.
	base color: Color transparent.
	base layoutPolicy: TableLayout new.
	base listDirection: #leftToRight.
	base hResizing: #rigid.
	base vResizing: #shrinkWrap.
	base width: 300.
	base layoutInset: 0.
	base cellInset: 3.
	base beSticky.
	title := StringMorph new.
	title contents: (Project parseProjectFileName: fileName) first.
	title font: Preferences standardEToysFont.
	thumbnail := self thumbnailFor: projectName.
	aButton := IconicButton new labelGraphic: thumbnail.
	aButton target: self.
	aButton actionSelector: #openProjectNamed:.
	aButton arguments: {projectName}.
	aButton borderWidth: 0.
	aButton color: ScriptingSystem baseColor.
	aButton extent: thumbnail extent + (4 @ 4).
	base addMorphBack: aButton.
	base addMorphBack: title.
	^ base