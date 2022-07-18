tests - block styling
testApplyingThemeDoesNotThrowErrorForBlockStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		editorTextMorphSpecFor: toolbuilder).
		
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error