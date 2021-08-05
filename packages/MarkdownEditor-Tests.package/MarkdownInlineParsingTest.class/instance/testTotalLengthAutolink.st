tests - length
testTotalLengthAutolink

	| autolink |
	autolink := MarkdownAutolink new.
	autolink path: 'https://www.hpi.de'.
	self assert: 20 equals: autolink totalLength