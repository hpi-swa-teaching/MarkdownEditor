new inline parsing
parseInlineElementsFrom: aRawString

	self firstPhaseProcessInlineFrom: aRawString.

	^ self inlineContainer