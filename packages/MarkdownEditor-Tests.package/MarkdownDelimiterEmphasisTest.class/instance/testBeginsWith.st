tests - recognition
testBeginsWith

	self assert: (MarkdownDelimiterEmphasis beginsWith: '*').
	
	{'-'. '!'. '!['. '['. 'f'. ''. ' '} do: [:string |
		self deny: (MarkdownDelimiterEmphasis beginsWith: string)]