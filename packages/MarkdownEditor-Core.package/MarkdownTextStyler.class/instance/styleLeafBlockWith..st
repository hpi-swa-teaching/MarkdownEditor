styling
styleLeafBlockWith: aMarkdownLeaf

	| text |
	text := self styleInlinesOf: aMarkdownLeaf.
	self addAttributesFrom: text from: aMarkdownLeaf startPosition to: aMarkdownLeaf endPosition.
	"leaf block styling"
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)