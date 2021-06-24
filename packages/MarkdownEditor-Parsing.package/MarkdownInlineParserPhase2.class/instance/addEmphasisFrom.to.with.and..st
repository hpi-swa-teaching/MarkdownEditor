parse
addEmphasisFrom: aStartIndex to: anEndIndex with: anEmphasis and: anEmphasisType

	self 
		inlineElements:	
			(MarkdownLinkedList newFrom: 
				(self inlineElements copyReplaceFrom: aStartIndex to: anEndIndex with: (LinkedList newFrom: {anEmphasis})));
		cleanUpDelimiter: self currentOpener for: anEmphasisType;
		cleanUpDelimiter: self currentCloser for: anEmphasisType