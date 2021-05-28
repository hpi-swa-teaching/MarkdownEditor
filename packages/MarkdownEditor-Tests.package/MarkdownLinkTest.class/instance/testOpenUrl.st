tests
testOpenUrl

	| link |
	link := (MarkdownLink from: 1 to: 4) url: 'https://www.google.de'.
	self assert:  link openUrl notNil