tests - block styling
testApplyingThemeDoesNotThrowErrorForBlockStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		buildEditorTextMorphWith: toolbuilder).
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error