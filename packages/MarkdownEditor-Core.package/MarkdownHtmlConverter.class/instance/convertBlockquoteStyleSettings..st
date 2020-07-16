convertStyle
convertBlockquoteStyleSettings: aStyleSettings
	| paragraph |
	
	paragraph := '
	blockquote {
		font-size: ', (aStyleSettings fontSizes at: MarkdownBlockquote labels first), 'px;
		color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownBlockquote labels first)), '
	}', Character cr.
	
	^ paragraph