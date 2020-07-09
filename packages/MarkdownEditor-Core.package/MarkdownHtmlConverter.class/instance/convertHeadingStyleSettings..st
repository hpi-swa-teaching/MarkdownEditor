convertStyle
convertHeadingStyleSettings: aStyleSettings
	| heading |
	
	heading := ''.
	MarkdownHeading labels do: [:label |  heading := heading, '
		h', label last asString, ' {
			font-size: ', (aStyleSettings fontSizes at: label), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: label)), '; 
		}', Character cr].
	
	^ heading