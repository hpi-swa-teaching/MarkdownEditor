styling
styleLeafBlockWith: aMarkdownLeaf

	| text |
	text := aMarkdownLeaf inlines 
		inject: Text new
		into: [:combinedText :inline | combinedText, (inline applyStylingWith: self)].
	text := aMarkdownLeaf completeTextElementFrom: text.
	text addAttribute: aMarkdownLeaf textAttribute.
	text addAttribute: aMarkdownLeaf textColor.
	^ text
	