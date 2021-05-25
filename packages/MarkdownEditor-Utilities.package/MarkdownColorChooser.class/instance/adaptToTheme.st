as yet unclassified
adaptToTheme

	self color: Color transparent.
	
	(self simpleColorChoosers at: 1) 
		color: MarkdownStyleSettings themeFontColor;
		borderColor: MarkdownStyleSettings themeFontColor;
		arguments: {MarkdownStyleSettings themeFontColor}