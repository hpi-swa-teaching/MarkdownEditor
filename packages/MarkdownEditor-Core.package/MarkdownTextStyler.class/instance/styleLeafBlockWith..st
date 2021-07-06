styling
styleLeafBlockWith: aMarkdownLeaf

	| text |
	text := aMarkdownLeaf inlines 
		inject: Text new
		into: [:combinedText :inline | combinedText, (inline applyStylingWith: self)].
	text := aMarkdownLeaf completeTextElementFrom: text.
	self addAttributesFrom: text from: aMarkdownLeaf startPosition to: aMarkdownLeaf endPosition.
	"leaf block styling"
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)