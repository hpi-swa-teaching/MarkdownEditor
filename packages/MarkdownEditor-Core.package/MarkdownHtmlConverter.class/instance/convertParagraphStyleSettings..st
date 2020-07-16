convertStyle
convertParagraphStyleSettings: aStyleSettings
	| paragraph |
	
	paragraph := '
	p {
		font-size: ', (aStyleSettings fontSizes at: MarkdownParagraph labels first), 'px;
		color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownParagraph labels first)), '; 
	}', Character cr.
	
	^ paragraph