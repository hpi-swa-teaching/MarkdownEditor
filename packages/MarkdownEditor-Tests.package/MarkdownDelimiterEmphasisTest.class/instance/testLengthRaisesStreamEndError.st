tests
testLengthRaisesStreamEndError

	self should: [MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '')] raise: Error description: 'Stream end reached'