as yet unclassified
newFrom: aString
	
	^(self newOrderedFrom: aString) ifNil: [self newUnorderedFrom: aString]