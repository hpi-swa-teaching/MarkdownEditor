add to inline elements
addStringFrom: aRawString

	self inlineElements 
		add: (MarkdownString2 newFrom: aRawString).
	self previousChar: aRawString last