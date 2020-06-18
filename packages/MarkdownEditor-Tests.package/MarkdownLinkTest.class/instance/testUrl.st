tests
testUrl

	| link |
	link := MarkdownLink new url: 'example.de/some/path'.
	self assert: link url == 'example.de/some/path'