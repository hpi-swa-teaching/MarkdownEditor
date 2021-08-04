tests
testChangeTheme

	| display theme1 theme2 |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'test')).
	self assert: display showContent first color = MarkdownStyleSettings themeFontColor.
	
	theme1 := SqueakTheme new.
	theme2 := TrimTheme new.
	theme1 applyTo: display asOrderedCollection.
	theme2 applyTo: display asOrderedCollection.
	
	self assert: display showContent first color = MarkdownStyleSettings themeFontColor
	
	