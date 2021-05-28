tests
testDefaultFontColorIsThemeTextColor

	self assert: MarkdownParagraph defaultFontColors equals: {UserInterfaceTheme current properties at: (DialogWindow -> #textColor)}. 