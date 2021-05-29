styling
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks

	| runs newBlocks |
	newBlocks:= Set new.
	runs := aCollectionOfMarkdownBlocks
		inject: RunArray new
		into: [:accumulatedRuns :block | |currentBlock|
				currentBlock := self newOrExistingBlock: block.
				newBlocks add: currentBlock.
				accumulatedRuns, currentBlock asText runs].
	self blocks: newBlocks.
	^ runs