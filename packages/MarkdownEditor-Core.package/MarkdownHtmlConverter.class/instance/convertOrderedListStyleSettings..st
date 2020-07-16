convertStyle
convertOrderedListStyleSettings: aStyleSettings
	| orderedList |
	
	orderedList := ''.
	MarkdownOrderedList labels do: [:label |  orderedList := orderedList, '
	', (self labelAsCssDescriptor: label), ' {
		font-size: ', (aStyleSettings fontSizes at: label), 'px;
		color: ', (self convertColorToRGBA: (aStyleSettings fontColors at: label)), '; 
	}', Character cr].

	^ orderedList