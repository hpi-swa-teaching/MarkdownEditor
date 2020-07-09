convertStyle
convertCodeStyleSettings: aStyleSettings
	| code |
	
	code := '
		p {
			font-size: ', (aStyleSettings fontSizes at: MarkdownCodeBlock labels first), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownCodeBlock labels first)), '; 
		}', Character cr.
	
	^ code