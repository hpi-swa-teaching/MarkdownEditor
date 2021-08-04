tests - window
testWindowClose

	editor handleClose.
	
	self deny: (World submorphs includes: window).
	self deny: (World submorphs includes: MarkdownSettings UniqueInstance window)