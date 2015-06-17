event handling
highlightFlapThumbnail: aFlapTab
	
	[
		|thumbnailColor|
		thumbnailColor := aFlapTab submorphs first color.
		aFlapTab submorphs first color: Color red.
		(Delay forSeconds: 1) wait.
		aFlapTab submorphs first color: thumbnailColor
	] fork.