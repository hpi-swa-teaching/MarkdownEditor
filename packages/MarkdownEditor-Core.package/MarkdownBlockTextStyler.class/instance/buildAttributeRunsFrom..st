styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| text |
	text := Text new.
	aCollectionOfMarkdownBlocks do: [:block |
		text append: block asText].
	^ text runs