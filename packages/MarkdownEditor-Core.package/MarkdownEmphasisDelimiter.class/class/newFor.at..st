instance creation
newFor: aString at: startPosition

	^ self new
		content: aString;
		startPosition: startPosition;
		delimiter: (aString at: 1);
		yourself