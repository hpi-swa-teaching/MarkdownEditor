convert styling
convertBlockquoteStyleSettings: aStyleSettings
	| paragraph |
	
	paragraph := '
		blockquote {
			font-size: ', (aStyleSettings fontSizes at: MarkdownBlockquote2 labels first), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownBlockquote2 labels first)), '; 
		}', Character cr.
	
	^ paragraph