as yet unclassified
default

	| fontSizes fontColors |
	fontSizes := Dictionary new.
	fontColors := Dictionary new.
	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels doWithIndex: 
			[:label :index | fontSizes at: label put: (blockClass defaultFontSizes at: index).
						     fontColors at: label put: (blockClass defaultFontColors at: index)]].
	
	^ self new 
		fontSizes: fontSizes;
		fontColors: fontColors;
		yourself