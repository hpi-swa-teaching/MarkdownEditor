need to be implemented
testConvertToRGBA

	| color convertedColor |
	color := Color r: 0.388 g: 0.393 b: 0.65 alpha: 0.5.
	
	convertedColor := MarkdownHtmlConverter new convertColorToRGBA: color.
	
	self assert: ('rgba(99, 100, 166, 0.498)' = convertedColor)