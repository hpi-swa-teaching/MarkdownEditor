styling
styleInlineContainerWith: aMarkdownInlineContainer

	| text |
	"self halt."
	text := aMarkdownInlineContainer children
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	text := aMarkdownInlineContainer completeTextElementFrom: text.
	text addAllAttributes: aMarkdownInlineContainer textAttributes.
	^ text