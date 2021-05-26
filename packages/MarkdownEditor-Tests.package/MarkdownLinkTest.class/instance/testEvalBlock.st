tests
testEvalBlock

	| link  text |
	link := (MarkdownLink from: 1 to: 4) url: 'https://www.google.de'.
	text :=  'test' asText.
	link addTo: text.
	self assert: (text runs first last class == PluggableTextAttribute).