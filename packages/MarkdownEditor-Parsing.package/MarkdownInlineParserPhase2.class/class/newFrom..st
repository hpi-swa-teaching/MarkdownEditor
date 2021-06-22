instance creation
newFrom: aFirstPhaseInlineParser

	^ self new
		delimiters: aFirstPhaseInlineParser delimiters;
		inlineElements: aFirstPhaseInlineParser inlineElements;
		delimiterManager: aFirstPhaseInlineParser delimiterManager;
		yourself