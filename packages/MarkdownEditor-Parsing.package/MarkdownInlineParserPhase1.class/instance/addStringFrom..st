add to inline elements
addStringFrom: aRawString

	self inlineElements 
		add: (MarkdownString newFrom: aRawString).
	self previousChar: aRawString last