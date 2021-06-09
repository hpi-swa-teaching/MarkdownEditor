as yet unclassified
newFrom: aString with: anIndex

	^ self new
		count: aString size;
		type: aString first;
		index: anIndex
		yourself
		