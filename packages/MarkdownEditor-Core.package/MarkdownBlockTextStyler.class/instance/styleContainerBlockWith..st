as yet unclassified
styleContainerBlockWith: aMarkdownContainer

	| text |
	text := aMarkdownContainer children 
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	text := aMarkdownContainer completeTextElementFrom: text.
	text addAttribute: aMarkdownContainer textAttribute.
	text addAttribute: aMarkdownContainer textColor.
	^ text
	