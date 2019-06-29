tests - inline styling
testApplyingThemeDoesNotThrowErrorForInlineStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		buildEditorTextMorphWith: toolbuilder).
	textMorph styler: MarkdownInlineTextStyler new.
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error