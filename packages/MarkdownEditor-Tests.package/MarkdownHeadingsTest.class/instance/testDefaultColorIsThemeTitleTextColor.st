tests
testDefaultColorIsThemeTitleTextColor

	self assert: MarkdownHeading defaultFontColors equals: {
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor).
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor).
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor).
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor).
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor).
		UserInterfaceTheme current properties at: (DialogWindow -> #titleTextColor)}. 