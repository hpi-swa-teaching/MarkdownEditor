tests
testApplyingThemeDoesNotThrowError
	
	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		buildEditorTextMorphWith: toolbuilder).
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error