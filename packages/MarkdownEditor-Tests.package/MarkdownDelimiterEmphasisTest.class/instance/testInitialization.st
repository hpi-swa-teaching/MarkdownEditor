tests
testInitialization

	|delimiter|
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '***').
	self assert: delimiter content equals: '***'.
	self deny: delimiter isLeftFlanking.
	self deny: delimiter isRightFlanking.
	delimiter := MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '***Thank you for travelling with ILT.').
	self assert: delimiter content equals: '***'.	
	self assert: delimiter isLeftFlanking.
	self deny: delimiter isRightFlanking.
	self should: [MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: 'a*')] raise: Error description: 'No Match'.
	self should: [MarkdownDelimiterEmphasis newFor: (MarkdownReadStream on: '')] raise: Error description: 'Stream end reached'
	