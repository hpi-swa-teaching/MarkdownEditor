convert styling
convertListStyleSettings: aStyleSettings

	| list |	
	list := ''.
	MarkdownList2 labels do: [:label |  list := list, '
		', (self labelAsCssDescriptor: label), ' {
			font-size: ', (aStyleSettings fontSizes at: label), 'px;
			color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: label)), '; 
		}', Character cr].
	
	^ list