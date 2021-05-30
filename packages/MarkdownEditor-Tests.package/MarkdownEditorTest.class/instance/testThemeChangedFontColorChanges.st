tests - window
testThemeChangedFontColorChanges

	editor applyUserInterfaceTheme.
	
	self assert: editor textMorph textMorph color = MarkdownStyleSettings themeFontColor