styling
styleLeafBlockWith: aMarkdownLeaf

	| text |
	text := aMarkdownLeaf inlines 
		inject: Text new
		into: [:combinedText :inline | combinedText, (inline applyStylingWith: self)].
	text := aMarkdownLeaf completeTextElementFrom: text.
	text := self addAttribuesFrom: aMarkdownLeaf to: text.
	^ text
	