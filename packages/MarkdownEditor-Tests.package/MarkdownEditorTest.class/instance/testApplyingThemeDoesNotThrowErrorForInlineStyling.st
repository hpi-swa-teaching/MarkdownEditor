tests - inline styling
testApplyingThemeDoesNotThrowErrorForInlineStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		editorTextMorphSpecFor: toolbuilder).
	textMorph styler: (MarkdownTextStyler new view: textMorph).
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error