parse
addEmphasisFrom: aStartIndex to: anEndIndex with: anEmphasis and: anEmphasisType

	self 
		inlineElements: (self inlineElements replacedFrom: aStartIndex to: anEndIndex with: anEmphasis);
		cleanUpDelimiter: self currentOpener for: anEmphasisType;
		cleanUpDelimiter: self currentCloser for: anEmphasisType