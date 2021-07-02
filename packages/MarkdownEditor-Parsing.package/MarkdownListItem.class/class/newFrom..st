instance creation
newFrom: aString
	
	^(self newOrderedFrom: aString) ifNil: [self newUnorderedFrom: aString]