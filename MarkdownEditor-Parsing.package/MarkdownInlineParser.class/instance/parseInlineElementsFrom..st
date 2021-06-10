new inline parsing
parseInlineElementsFrom: aRawString

	self firstPhaseProcessInlineFrom: aRawString.
	self secondPhaseProcessInlineFrom: aRawString.

	^ self inlineContainer