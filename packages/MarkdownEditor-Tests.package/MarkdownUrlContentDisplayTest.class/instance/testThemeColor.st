tests
testThemeColor

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'test')).
	self assert: display showContent first color equals: MarkdownStyleSettings themeFontColor.
		
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'error occured retrieving ')).
	self assert: display showContent first color equals: MarkdownStyleSettings themeFontColor