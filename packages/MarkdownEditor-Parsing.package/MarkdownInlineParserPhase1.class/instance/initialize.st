initialize
initialize

	self delimiters: LinkedList new.
	self inlineElements: LinkedList new.
	self previousChar: ' '.
	self delimiterManager: MarkdownDelimiterManager new.
	self delimiterManager forAll: MarkdownEmphasis2 put: #processPossibleDelimitersFrom:.
	self delimiterManager forAll: MarkdownReference put: #processReferenceFrom: 