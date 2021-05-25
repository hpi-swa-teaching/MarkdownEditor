testing
closeMarkdownOptionsIfStillOpen
	
	self window = #noWindow ifFalse: [self window delete].
	self window: #noWindow