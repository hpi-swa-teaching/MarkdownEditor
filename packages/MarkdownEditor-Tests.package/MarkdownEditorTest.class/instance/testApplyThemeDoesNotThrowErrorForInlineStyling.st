tests - inline styling
testApplyThemeDoesNotThrowErrorForInlineStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		buildEditorTextMorphWith: toolbuilder).
	textMorph styler: (MarkdownTextStyler new view: textMorph).
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error