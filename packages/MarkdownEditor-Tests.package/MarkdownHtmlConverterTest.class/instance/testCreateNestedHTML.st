as yet unclassified
testCreateNestedHTML

	| converter nested link cursive html |
	
	converter := MarkdownHtmlConverter new.
	link := MarkdownLink new.
	link content: 'Click here'.
	link url: 'https://example.com'.
	link setFrom: 29 to: 61.
	cursive := MarkdownItalic new.
	cursive content: 'If you want to learn more, [Click here](https://example.com)'.
	cursive setFrom: 1 to: 62.
	nested := {cursive . link} asOrderedCollection.
	html := converter createNestedHTML: nested.
	
	self assert: html = {'<em>If you want to learn more, <a href="https://example.com">Click here</a></em>' . 62}