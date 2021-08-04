tests
testApplyTheme

	| display mime |
	
	mime := MIMEDocument content: 'test'.
	display := (MarkdownUrlContentDisplay openWithMime: mime).
	display model applyUserInterfaceTheme.
	
	self assert: display userInterfaceTheme theme = UserInterfaceTheme current.
	display delete
	