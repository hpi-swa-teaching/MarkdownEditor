changing
adaptToTheme

	self color: Color transparent.
	(self simpleColorChoosers first) 
		color: MarkdownStyleSettings themeFontColor;
		borderColor: MarkdownStyleSettings themeFontColor;
		arguments: {MarkdownStyleSettings themeFontColor}