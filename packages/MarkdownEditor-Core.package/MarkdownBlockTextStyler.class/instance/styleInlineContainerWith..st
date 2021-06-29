as yet unclassified
styleInlineContainerWith: aMarkdownInlineContainer

	| text |
	text := aMarkdownInlineContainer children 
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	text := aMarkdownInlineContainer completeTextElementFrom: text.
	text addAttribute: aMarkdownInlineContainer textEmphasis.
	^ text