add to inline elements
addToInlineElements: aMarkdownInlineElement

	aMarkdownInlineElement startPosition: self currentIndex.
	self inlineElements add: aMarkdownInlineElement.
	self currentIndex: (self currentIndex + aMarkdownInlineElement totalLength).
	self previousChar: aMarkdownInlineElement lastChar