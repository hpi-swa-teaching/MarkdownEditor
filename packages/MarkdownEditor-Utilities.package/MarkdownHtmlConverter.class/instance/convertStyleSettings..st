as yet unclassified
convertStyleSettings: aStyleSettings
	| heading paragraph |
	
	heading := ''.
	MarkdownHeading labels do: [:label |  heading := heading, '
		h', label last asString, ' {
			font-size: ', (aStyleSettings fontSizes at: label), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: label)), '; 
		}', Character cr].
	
	paragraph := '
		p {
			font-size: ', (aStyleSettings fontSizes at: MarkdownParagraph labels first), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: MarkdownParagraph labels first)), '; 
		}', Character cr.
	
	^ '<style>', heading, paragraph, '	</style>'