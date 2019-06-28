instance creation
newFor: aString at: startPosition

	^ self new 
		content: aString;
		startPosition: startPosition;
		yourself	