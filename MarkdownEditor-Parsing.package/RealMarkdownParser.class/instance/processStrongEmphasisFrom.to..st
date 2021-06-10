new inline parsing
processStrongEmphasisFrom: startIndex to: endIndex

	| newInlineContainer |
	newInlineContainer := self inlineContainer copyFrom: 1 to: startIndex - 1.
	newInlineContainer 
		add: (MarkdownBold2 new children: (self inlineContainer copyFrom: startIndex to: endIndex));
		addAll: (self inlineContainer copyFrom: endIndex + 1 to: self inlineContainer size).
	self inlineContainer removeAll.
	self inlineContainer: newInlineContainer.
	self updateDelimiterIndexWith: startIndex to: endIndex