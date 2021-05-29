styling
newOrExistingBlock: aMarkdownBlock
	
	^ self blocks 
		detect: [:b | b = aMarkdownBlock] 
		ifNone: [aMarkdownBlock].