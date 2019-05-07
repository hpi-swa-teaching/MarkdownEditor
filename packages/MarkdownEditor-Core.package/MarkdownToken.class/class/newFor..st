instance creation
newFor: aMarkdownReadStream

	^ self basicNew 
		initialize: aMarkdownReadStream;
		position: aMarkdownReadStream position;
		yourself		