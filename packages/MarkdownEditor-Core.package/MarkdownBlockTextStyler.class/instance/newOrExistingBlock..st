styling
newOrExistingBlock: aMarkdownBlock
	
	"if the new block is choosen it will also get added to the Set of blocks"
	^ self blocks 
		detect: [:b | b = aMarkdownBlock] 
		ifNone: [self blocks add: aMarkdownBlock. 
				aMarkdownBlock].