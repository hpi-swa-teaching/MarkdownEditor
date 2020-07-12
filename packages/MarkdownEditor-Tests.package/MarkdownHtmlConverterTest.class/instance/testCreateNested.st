as yet unclassified
testCreateNested

	| converter nested |
	
	converter := MarkdownHtmlConverter new.
	nested := converter createNested.
	
	self assert: nested isEmpty