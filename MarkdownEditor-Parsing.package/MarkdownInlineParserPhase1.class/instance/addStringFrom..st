add to inline elements
addStringFrom: aRawString

	self previousChar: aRawString last.
	self inlineElements 
		add: (MarkdownString2 newFrom: aRawString)