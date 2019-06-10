tests
testApplyingThemeDoesNotThrowError

	| textMorph |
	textMorph := PluggableTextMorphPlus new
		styler: MarkdownTextStyler new;
		model: MarkdownEditor new;
		yourself.
		
	"Squeak 5.0 does not have UserInterfaceThemes."
	(self executeShould: [textMorph applyUserInterfaceTheme] 
		inScopeOf: MessageNotUnderstood 
		withDescriptionContaining: 'applyUserInterfaceTheme') 
	ifFalse: [self shouldnt: [textMorph applyUserInterfaceTheme] raise: Error]