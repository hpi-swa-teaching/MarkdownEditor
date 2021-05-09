color
testThemeFontColor

	| blockStyler |
	
	blockStyler := MarkdownBlockStylerMorph new.
	
	self assert: (blockStyler themeFontColor = (UserInterfaceTheme current properties at: (DialogWindow ->#textColor))).
	