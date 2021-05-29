styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| text |
	Transcript clear.
	text := aCollectionOfMarkdownBlocks
		inject: Text new
		into: [:accumulatedText :block | |currentBlock|
				currentBlock := self blocks detect: [:b |self halt. b = block] ifNone: [self blocks add: block. block].
				self halt.  
				accumulatedText, currentBlock asText].
	self blocks: (self blocks select: [:b | aCollectionOfMarkdownBlocks includes: b]) asSet asOrderedCollection.
	Transcript show: (self blocks).
	^ text runs