as yet unclassified
newFrom: aString

	^ self new
		count: aString size;
		type: aString first;
		yourself
		