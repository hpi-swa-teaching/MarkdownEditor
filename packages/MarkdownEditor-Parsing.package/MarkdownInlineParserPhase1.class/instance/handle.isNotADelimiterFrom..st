helpers - emphasis
handle: aDelimiterRun isNotADelimiterFrom: aRawString

	self addToInlineElements:(
		MarkdownString newFrom: 
			(aDelimiterRun 
				copyFrom: 2 
				to: aDelimiterRun size - 1)).
	 ^ aRawString 
				allButFirst: aDelimiterRun size - 2