styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| runs time1 time2 |
	time1 := TimeStamp now.
	runs := aCollectionOfMarkdownBlocks
		inject: RunArray new
		into: [:accumulatedRuns :block | |currentBlock|
				currentBlock := self blocks detect: [:b | b = block] ifNone: [self blocks add: block. block].
				accumulatedRuns, currentBlock asText runs].
	Transcript show: 'Time for choosing between old or new: ', (TimeStamp now - time1) asString, Character cr.
	time2 := TimeStamp now.
	self blocks: (self blocks select: [:b | aCollectionOfMarkdownBlocks includes: b]).
	Transcript show: 'Time for removing old blocks: ', (TimeStamp now - time2) asString, Character cr.
	^ runs