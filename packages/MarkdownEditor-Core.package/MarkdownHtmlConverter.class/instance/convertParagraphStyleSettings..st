convert styling
convertParagraphStyleSettings: aStyleSettings
	| paragraph |
	
	paragraph := '
		p {
			font-size: ', (aStyleSettings fontSizes at: MarkdownParagraph2 labels first), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownParagraph2 labels first)), '; 
		}', Character cr.
	
	^ paragraph