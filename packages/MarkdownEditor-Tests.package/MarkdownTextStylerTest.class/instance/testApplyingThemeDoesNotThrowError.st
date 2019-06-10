as yet unclassified
testApplyingThemeDoesNotThrowError

	| textMorph |
	textMorph := PluggableTextMorphPlus new
		styler: MarkdownTextStyler new;
		model: MarkdownEditor new;
		yourself.
	self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error