convert styling
convertUnorderedListStyleSettings: aStyleSettings
	| unorderedList |
	
	unorderedList := ''.
	MarkdownUnorderedList labels do: [:label |  unorderedList := unorderedList, '
		', (self labelAsCssDescriptor: label), ' {
			font-size: ', (aStyleSettings fontSizes at: label), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: label)), '; 
		}', Character cr].
	
	^ unorderedList