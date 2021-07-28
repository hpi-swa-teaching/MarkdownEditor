autolinks
testTotalLengthAutolink

	| autolink |
	autolink := MarkdownAutolink new.
	autolink autolinkPath: 'https://www.hpi.de'.
	self assert: 20 equals: autolink totalLength