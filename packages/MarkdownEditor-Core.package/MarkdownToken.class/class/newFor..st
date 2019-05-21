instance creation
newFor: aMarkdownReadStream

	^ self new 
		fillContentFrom: aMarkdownReadStream;
		startPosition: aMarkdownReadStream position + 1;
		yourself		