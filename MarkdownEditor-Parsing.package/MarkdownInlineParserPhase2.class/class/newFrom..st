as yet unclassified
newFrom: aFirstPhaseInlineParser

	^ self new
		delimiters: aFirstPhaseInlineParser delimiters;
		inlineElements: aFirstPhaseInlineParser inlineElements;
		yourself