event handling
change: aStyleSettings

	(self dependents select: [:dependent | dependent class = MarkdownEditor])
		do: [:editor | 
			editor blockTextStyler styleSettings: aStyleSettings.
			editor saveTextInModel]