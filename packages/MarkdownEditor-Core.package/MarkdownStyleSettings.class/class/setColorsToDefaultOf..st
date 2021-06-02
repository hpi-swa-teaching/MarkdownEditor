constants
setColorsToDefaultOf: styleSettings

	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels doWithIndex: 
			[:label :index | styleSettings fontColors at: label put: (blockClass defaultFontColors at: index)]].
	^ styleSettings