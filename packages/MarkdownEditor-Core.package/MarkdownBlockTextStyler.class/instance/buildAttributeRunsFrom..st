styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| text time |
	time := TimeStamp now.
	text := aCollectionOfMarkdownBlocks
		inject: Text new
		into: [:accumulatedText :block | |currentBlock|
				currentBlock := self blocks detect: [:b | b = block] ifNone: [self blocks add: block. block].
				accumulatedText, currentBlock asText].
	self blocks: (self blocks select: [:b | aCollectionOfMarkdownBlocks includes: b]) asSet asOrderedCollection.
	Transcript show: (TimeStamp now - time) asString, Character cr.
	^ text runs