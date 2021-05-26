event handling
change: aStyleSettings

	(self dependents select: [:dependent | dependent isKindOf: MarkdownEditor])
		do: [:editor | 
			editor blockTextStyler styleSettings: aStyleSettings.
			editor saveTextInModel]