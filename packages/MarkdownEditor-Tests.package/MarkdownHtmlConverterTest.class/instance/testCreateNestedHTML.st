tests
testCreateNestedHTML

	| converter nested link cursive strike html |
	
	converter := MarkdownHtmlConverter new.
	link := MarkdownLink new.
	link content: 'Click here'.
	link url: 'https://example.com'.
	link setFrom: 31 to: 63.
	cursive := MarkdownItalic new.
	cursive content: 'If you want to learn more, [', link content, '](',  link url ,')'.
	cursive setFrom: 3 to: 64.
	strike := MarkdownStrike new.
	strike content: '*', cursive content, '*'.
	strike setFrom: 1 to: 66.
	
	nested := {strike. cursive. link} asOrderedCollection.
	html := converter createNestedHTML: nested.
	self assert: html = {'<del><em>If you want to learn more, <a href="https://example.com">Click here</a></em></del>' . 66}