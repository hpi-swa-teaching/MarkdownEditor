tests - appearance
testChangeThemeFontColorChanges

	| fontSizes |
	settings currentStyleSettings fontColors at: 'Paragraph' put: Color red.
	self deny: settings currentStyleSettings fontColors = MarkdownStyleSettings default fontColors.
	
	settings currentStyleSettings fontSizes at: 'Paragraph' put: 30.
	fontSizes := settings currentStyleSettings fontSizes.

	MarkdownSettings themeChanged.
		
	self assert: settings currentStyleSettings fontColors = MarkdownStyleSettings default fontColors.
	self assert: fontSizes = settings currentStyleSettings fontSizes