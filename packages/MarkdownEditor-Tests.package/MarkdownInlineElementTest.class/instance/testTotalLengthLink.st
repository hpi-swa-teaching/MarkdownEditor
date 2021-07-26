reference
testTotalLengthLink

	| link |
	link := MarkdownLink new.
	link children add: (MarkdownString newFrom: 'link').
	link path: 'www.hpi.de'.
	self assert: 18 equals: link totalLength