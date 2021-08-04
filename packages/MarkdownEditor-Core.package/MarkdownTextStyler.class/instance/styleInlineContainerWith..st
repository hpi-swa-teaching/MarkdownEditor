styling
styleInlineContainerWith: aMarkdownInlineContainer

	| inlineText |
	inlineText := aMarkdownInlineContainer children
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	inlineText := aMarkdownInlineContainer completeTextElementFrom: inlineText.
	inlineText addAllAttributes: aMarkdownInlineContainer textAttributes.
	^ inlineText