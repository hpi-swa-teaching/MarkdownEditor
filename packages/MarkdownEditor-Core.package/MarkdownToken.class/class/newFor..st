instance creation
newFor: aMarkdownReadStream

	^ self basicNew 
		initialize: aMarkdownReadStream;
		position: aMarkdownReadStream position + 1;
		yourself		