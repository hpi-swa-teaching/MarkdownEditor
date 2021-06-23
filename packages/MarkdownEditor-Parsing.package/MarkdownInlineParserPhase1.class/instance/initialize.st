initialize
initialize

	self delimiters: MarkdownLinkedList new.
	self inlineElements: MarkdownLinkedList new.
	self previousChar: ' '.
	self delimiterManager: MarkdownDelimiterManager new.
	self delimiterManager forAll: MarkdownEmphasis2 put: #processPossibleDelimitersFrom:.
	self delimiterManager forAll: MarkdownReference put: #processReferenceFrom: 