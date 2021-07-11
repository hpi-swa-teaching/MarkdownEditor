add to inline elements
addToInlineElements: aMarkdownInlineElement

	self inlineElements add: aMarkdownInlineElement.
	self previousChar: aMarkdownInlineElement lastChar 