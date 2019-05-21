tests - recognition
testBeginsWith

	self assert: (MarkdownDelimiterEmphasis mayBeginWith: '*').
	
	{'-'. '!'. '!['. '['. 'f'. ''. ' '} do: [:string |
		self deny: (MarkdownDelimiterEmphasis beginsWith: string)]