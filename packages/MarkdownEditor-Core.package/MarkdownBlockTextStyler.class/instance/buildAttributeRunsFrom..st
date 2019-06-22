parsing
buildAttributeRunsFrom: aCollectionOfMarkdownBlocks
	
	^ (aCollectionOfMarkdownBlocks 
		inject: Text new 
		into: [:text :block | text append: block asText]) runs
