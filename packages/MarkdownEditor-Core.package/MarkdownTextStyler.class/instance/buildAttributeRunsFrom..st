styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| text |
	text := aCollectionOfMarkdownBlocks
		inject: Text new
		into: [:accumulatedText :block | accumulatedText, block asText].
	^ text runs